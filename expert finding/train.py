#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time : 2021/4/22 2:05
# @Author : gsg
# @Site : 
# @File : train.py
# @Software: PyCharm
import copy
import os
import random

os.environ["CUDA_VISIBLE_DEVICES"] = "7"
import json

import torch
import torch.nn as nn
from torch.utils.data import Dataset
import numpy as np
import torch.optim as optim
from torch.utils.data import DataLoader
from tqdm import tqdm
import torch.nn.functional as F
import heapq

lr = 0.001
weight_decay = 0.005
epoches = 10000
batchsize = 16


class DDataset(Dataset):
    def __init__(self, paper, expert, res, paper_index2id, expert_id2index):
        self.paper = paper.squeeze()
        self.expert = expert.squeeze()
        self.res = res
        self.index_id = paper_index2id
        self.expert_id2index = expert_id2index

        self.correct_embedding = []
        self.correct_expert = []
        for item in range(len(paper)):
            paper_id = paper_index2id[str(item)]
            experts = []
            for e in self.res[paper_id]:
                experts.append(self.expert_id2index.get(e, -1))
            self.correct_expert.append(experts)

            correct_embedding = []
            for e in experts:
                correct_embedding.append(self.expert[e] if e >= 0 else np.zeros(768))
            self.correct_embedding.append(correct_embedding)

        self.confused_expert = []
        self.confused_expert_embedding = []
        for item in self.correct_expert:
            choices = np.random.randint(low=0, high=len(self.expert), size=len(item) * 10)
            set_ = set(item)
            confused = [item for item in choices if item not in set_][:len(item)]
            self.confused_expert.append(confused)
            self.confused_expert_embedding.append([self.expert[item] for item in confused])

    def __getitem__(self, item):
        return self.paper[item], random.choice(self.correct_embedding[item]), \
               random.choice(self.confused_expert_embedding[item])

    def getexpert(self, item):
        return

    def __len__(self):
        return self.paper.shape[0]


class MModel(nn.Module):
    def __init__(self):
        super(MModel, self).__init__()
        out_dim = 64
        self.paper_Linear = nn.Linear(768, 512)
        self.dropout_1 = nn.Dropout(0.2)
        self.expert_Linear = nn.Linear(768, 512)
        self.dropout_2 = nn.Dropout(0.2)
        self.paper_Linear_2 = nn.Linear(512, out_dim)
        self.expert_Linear_2 = nn.Linear(512, out_dim)

    def forward(self, paper, expert, confused):
        paper = F.relu(self.paper_Linear(paper))
        paper = self.dropout_1(paper)
        paper = F.relu(self.paper_Linear_2(paper))

        expert = F.relu(self.expert_Linear(expert))
        expert = self.dropout_2(expert)
        expert = F.relu(self.expert_Linear_2(expert))

        confused = F.relu(self.expert_Linear(confused))
        confused = self.dropout_2(confused)
        confused = F.relu(self.expert_Linear_2(confused))
        return paper, expert, confused


def euclidean_dist(x, y):
    """
    Args:
      x: pytorch Variable, with shape [m, d]
      y: pytorch Variable, with shape [n, d]
    Returns:
      dist: pytorch Variable, with shape [m, n]
    """

    m, n = x.size(0), y.size(0)
    # xx经过pow()方法对每单个数据进行二次方操作后，在axis=1 方向（横向，就是第一列向最后一列的方向）加和，此时xx的shape为(m, 1)，经过expand()方法，扩展n-1次，此时xx的shape为(m, n)
    xx = torch.pow(x, 2).sum(1, keepdim=True).expand(m, n)
    # yy会在最后进行转置的操作
    yy = torch.pow(y, 2).sum(1, keepdim=True).expand(n, m).t()
    dist = xx + yy
    # torch.addmm(beta=1, input, alpha=1, mat1, mat2, out=None)，这行表示的意思是dist - 2 * x * yT
    dist.addmm_(1, -2, x, y.t())
    # clamp()函数可以限定dist内元素的最大最小范围，dist最后开方，得到样本之间的距离矩阵
    dist = dist.clamp(min=1e-12).sqrt()  # for numerical stability
    return dist


def AP(y_true, y_pre):
    score = 0
    n = 1
    for i, y in enumerate(y_pre[:len(y_true)]):
        if y in y_true:
            score += (n / (i + 1))
            n += 1
    if n == 1:
        return 0
    return score / (n - 1)


def call(y_true, y_pre):
    score = 0
    for i in y_pre:
        if i in y_true:
            score += 1
    return score / len(y_true)


paper_embed = np.load('proceeded/paper_embedding.npy')
expert_embed = np.load('proceeded/expert_embedding.npy')
with open('benchmark/results_0415.json', 'r', encoding='utf-8')as f:
    res = json.load(f)

result = {}
for item in res:
    result[item['pub_id']] = item['experts']

with open('proceeded/paper_index2id.json', 'r')as f:
    paper_index2id = json.load(f)

with open('proceeded/paper_id2index.json', 'r') as f:
    paper_id2indedx = json.load(f)

with open('proceeded/expert_id2index.json', 'r') as f:
    expert_id2index = json.load(f)

with open('proceeded/expert_index2id.json', 'r') as f:
    expert_index2id = json.load(f)

whole_dataset = DDataset(paper_embed, expert_embed, result, paper_index2id, expert_id2index)

train_size = int(len(whole_dataset) * 0.7)
valid_size = int(len(whole_dataset) * 0.2)
test_size = len(whole_dataset) - train_size - valid_size
train_dataset, valid_dataset, test_dataset = \
    torch.utils.data.random_split(whole_dataset, [train_size, valid_size, test_size])

train_loader = DataLoader(dataset=train_dataset, batch_size=batchsize, shuffle=True)
valid_loader = DataLoader(dataset=valid_dataset, batch_size=batchsize, shuffle=False)
test_loader = DataLoader(dataset=test_dataset, batch_size=batchsize, shuffle=False)

if __name__ == '__main__':
    model = MModel()
    model = model.cuda()

    cos = nn.CosineEmbeddingLoss()
    tri = nn.TripletMarginLoss()
    optimizer = optim.Adagrad(model.parameters(), lr=lr, weight_decay=weight_decay)

    best_model = None
    min_loss = 100
    patience = 0
    # for epoch in tqdm(range(epoches)):
    #     if patience == 100:
    #         break
    #     # 开始训练
    #     model.train()
    #     train_loss, test_losses = 0, 0
    #     train_acc, test_acc = 0, 0
    #     test_coef = [0, 0]
    #     n, m = 0, 0
    #     for paper, expert, confused in train_loader:
    #         paper, expert, confused = paper.cuda(), expert.float().cuda(), confused.float().cuda()
    #         n += 1
    #         model.zero_grad()
    #         p, e, c = model(paper, expert, confused)
    #         loss = tri(p, e, c)
    #         loss.backward()
    #         # loss1 = cos(p, e,
    #         #             torch.full((p.shape[0],), fill_value=1, dtype=torch.float, device=torch.device('cuda:0')))
    #         # loss2 = cos(p, c,
    #         #             torch.full((p.shape[0],), fill_value=-1, dtype=torch.float, device=torch.device('cuda:0')))
    #         # (loss1 + loss2).backward()
    #         optimizer.step()
    #         train_loss += loss
    #
    #     model.eval()
    #     with torch.no_grad():
    #         for paper, expert, confused in valid_loader:
    #             paper, expert, confused = paper.cuda(), expert.float().cuda(), confused.float().cuda()
    #             m += 1
    #             p, e, c = model(paper, expert, confused)
    #             loss = tri(p, e, c)
    #             test_losses += loss
    #             # loss1 = cos(p, e,
    #             #             torch.full((p.shape[0],), fill_value=1, dtype=torch.float, device=torch.device('cuda:0')))
    #             # loss2 = cos(p, c,
    #             #             torch.full((p.shape[0],), fill_value=-1, dtype=torch.float, device=torch.device('cuda:0')))
    #             # test_losses += (loss1 + loss2)
    #
    #     train_loss = train_loss / n
    #     test_losses = test_losses / m
    #     print(train_loss, test_losses)
    #     if test_losses < min_loss:
    #         min_loss = test_losses
    #         patience = 0
    #         best_model = copy.deepcopy(model)
    #         torch.save(model, 'model/model_tri.pkl')
    #     else:
    #         patience += 1

    model = torch.load('model/model_tri.pkl')
    model.eval()
    label_pred = []
    with torch.no_grad():
        APs = []
        for paper, expert, confused in test_loader:
            paper, expert, confused = paper.cuda(), expert.float().cuda(), confused.float().cuda()
            correct_expert = []
            for item in range(len(paper)):
                paper_id = paper_index2id[str(item)]
                experts = []
                for e in result[paper_id]:
                    experts.append(expert_id2index.get(e, -1))
                correct_expert.append(experts)
            #
            #     coss = None
            #     for expert in tqdm(expert_embed):
            #         expert = torch.tensor(expert).view(1, -1)
            #         expert = expert.repeat(batchsize, 1).float().cuda()
            #         p, e, __ = model(paper, expert, confused)
            #         cos = euclidean_dist(p, e).view(1, -1)
            #         if coss is None:
            #             coss = cos
            #         else:
            #             coss = torch.cat((coss, cos))
            #
            #     torch.save(coss.cpu(), 'coss.pt')

            coss = torch.load('coss.pt')
            for i in tqdm(range(coss.shape[1])):
                m = coss.T[i].cpu().numpy().tolist()

                max_number = heapq.nlargest(50000, m)
                max_index = []
                for t in max_number:
                    index = m.index(t)
                    max_index.append(index)
                    m[index] = 0

                APs.append(call(correct_expert[i], max_index))
                print(APs)
                print(np.mean(APs))
