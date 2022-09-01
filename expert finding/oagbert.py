#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time : 2021/4/17 1:05
# @Author : gsg
# @Site :
# @File : oagbert.py
# @Software: PyCharm
import math
import os
import pickle

os.environ["CUDA_VISIBLE_DEVICES"] = "3"
from cogdl import oagbert
import torch

import torch.utils
import json

from torch.nn.utils import rnn
from tqdm import tqdm
import numpy as np

tokenizer, model = oagbert("oagbert-v2-sim")
model = model.cuda()
model.eval()


def encoding(title='', abstract='', concepts='', author='') -> torch.Tensor:
    input_ids, input_masks, token_type_ids, masked_lm_labels, position_ids, position_ids_second, masked_positions, num_spans = model.build_inputs(
        title=title, abstract=abstract, authors=author, concepts=concepts,
    )
    with torch.no_grad():
        _, paper_embed = model.bert.forward(
            input_ids=torch.LongTensor(input_ids).unsqueeze(0).cuda(),
            token_type_ids=torch.LongTensor(token_type_ids).unsqueeze(0).cuda(),
            attention_mask=torch.LongTensor(input_masks).unsqueeze(0).cuda(),
            output_all_encoded_layers=False,
            checkpoint_activations=False,
            position_ids=torch.LongTensor(position_ids).unsqueeze(0).cuda(),
            position_ids_second=torch.LongTensor(position_ids_second).unsqueeze(0).cuda()
        )

    return paper_embed.cpu()


# with open('benchmark/publications_0415.json', 'r', encoding='utf-8')as f:
#     papers = json.load(f)
#
# paper_id2index = {}
# paper_index2id = {}
# for i, paper in tqdm(enumerate(papers)):
#     paper_index2id[i] = paper['id']
#     paper_id2index[paper['id']] = i
#
# with open('proceeded/paper_index2id.json', 'w') as f:
#     json.dump(paper_index2id, f)
# with open('proceeded/paper_id2index.json', 'w') as f:
#     json.dump(paper_id2index, f)

experts = []
for i in [4]:
    with open('benchmark/experts' + str(i) + '.json', 'r', encoding='utf-8')as f:
        experts += json.load(f)

# paper_id2index = {}
# paper_index2id = {}
# for i, paper in tqdm(enumerate(experts)):
#     paper_index2id[i] = paper['id']
#     paper_id2index[paper['id']] = i
#
# with open('proceeded/expert_index2id.json', 'w') as f:
#     json.dump(paper_index2id, f)
# with open('proceeded/expert_id2index.json', 'w') as f:
#     json.dump(paper_id2index, f)

# a = json.load(f)
# lenth = len(a)
# for j in tqdm(range(math.ceil(lenth / 10000))):
#     with open('benchmark/experts' + str(i) + '_' + str(j) + '.json', 'w', encoding='utf-8')as f1:
#         json.dump(a[10000 * j:10000 * j + 9999], f1)

# paper_embedding = []
# for paper in tqdm(papers):
#     e = encoding(paper['title'], paper['abstract'], paper['keywords'])
#     paper_embedding.append(e.numpy())
#
# np.save('proceeded/paper_embedding', np.array(paper_embedding))

expert_encoding_list = []
for expert in tqdm(experts):
    pubinfo = expert['pub_info']
    if len(pubinfo) == 0:
        expert_encoding_list.append(np.zeros((1, 768), dtype=np.float))
        continue

    encoding_list = []
    for pub in pubinfo:
        encoding_list.append(encoding(pub.get('title', ''), pub.get('abstract', ''), pub.get('keywords', ''),
                                      expert.get('name', '')).numpy())
    expert_encoding_list.append(encoding_list)

with open('proceeded/expert_whole_embedding_4.pkl', 'wb') as f:
    pickle.dump(expert_encoding_list, f)
