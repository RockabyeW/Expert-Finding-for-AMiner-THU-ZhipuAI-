#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time : 2021/4/10 0:49
# @Author : gsg
# @Site : 
# @File : test.py
# @Software: PyCharm
import codecs
import copy
import json

import torch
from pytorch_transformers import BertModel, BertConfig, BertTokenizer
from torch import nn
import os.path as osp

import pandas as pd
from tqdm import tqdm
import numpy as np

data_dir = './aminer/import'
config_path = 'bert_model/config.json'
model_path = 'bert_model/pytorch_model.bin'
vocab_path = 'bert_model/vocab.txt'


# ——————构造模型——————
class BertTextNet(nn.Module):
    def __init__(self, code_length):
        super(BertTextNet, self).__init__()

        modelConfig = BertConfig.from_pretrained(config_path)
        self.textExtractor = BertModel.from_pretrained(model_path, config=modelConfig)
        embedding_dim = self.textExtractor.config.hidden_size

        self.fc = nn.Linear(embedding_dim, code_length)
        self.tanh = torch.nn.Tanh()

    def forward(self, tokens, segments, input_masks):
        output = self.textExtractor(tokens, token_type_ids=segments,
                                    attention_mask=input_masks)
        text_embeddings = output[0][:, 0, :]
        # output[0](batch size, sequence length, model hidden dimension)

        features = self.fc(text_embeddings)
        features = self.tanh(features)
        return features


entity_dic = {}
with codecs.open('embedding.txt', 'r') as f:
    lines = f.readlines()
    for line in lines:
        line = line.strip().split('\t')
        if len(line) != 2:
            continue
        entity_dic[line[0]] = json.loads(line[1])

keywords_in_paper = pd.read_csv(osp.join(data_dir, 'keywordsin_node.csv'))
keywords = keywords_in_paper['label_zh'].tolist()

ele = set(list(entity_dic.keys())).intersection(set(keywords))
print(len(ele), len(keywords))

# ——————输入处理——————


# papers = pd.read_csv(osp.join(data_dir, 'papers.csv'))
# paper_titles = papers['title'].tolist()
# paper_id = papers['field:ID'].tolist()
# paper_id2index = {paper_id[i]: i for i in range(len(paper_id))}
#
# tokenizer = BertTokenizer.from_pretrained(vocab_path)
#
# tokens, segments, input_masks = [], [], []
# for title in tqdm(paper_titles[:20]):
#     text = "[CLS]" + title + "[SEP]"
#     tokenized_text = tokenizer.tokenize(text)  # 用tokenizer对句子分词
#     indexed_tokens = tokenizer.convert_tokens_to_ids(tokenized_text)  # 索引列表
#     tokens.append(indexed_tokens)
#     segments.append([0] * len(indexed_tokens))
#     input_masks.append([1] * len(indexed_tokens))
#
# max_len = max([len(single) for single in tokens])  # 最大的句子长度
#
# for j in range(len(tokens)):
#     padding = [0] * (max_len - len(tokens[j]))
#     tokens[j] += padding
#     segments[j] += padding
#     input_masks[j] += padding
# # segments列表全0，因为只有一个句子1，没有句子2
# # input_masks列表1的部分代表句子单词，而后面0的部分代表paddig，只是用于保持输入整齐，没有实际意义。
# # 相当于告诉BertModel不要利用后面0的部分
#
# # 转换成PyTorch tensors
# tokens_tensor = torch.tensor(tokens)
# segments_tensors = torch.tensor(segments)
# input_masks_tensors = torch.tensor(input_masks)
#
# # ——————提取文本特征——————
# textNet = BertTextNet(code_length=32)
#
# epoch_iter = range(100)
# best_score = 0
# best_loss = np.inf
# max_score = 0
# min_loss = np.inf
# best_model = copy.deepcopy(textNet)
# for epoch in epoch_iter:
#     textNet.model.train()
#     text_hashCodes = textNet(tokens_tensor, segments_tensors, input_masks_tensors)  # text_hashCodes是一个32-dim文本特征
#
# print(text_hashCodes)
