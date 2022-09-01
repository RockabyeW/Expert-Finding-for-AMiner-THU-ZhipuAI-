#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time : 2021/5/13 15:59
# @Author : gsg
# @Site : 
# @File : divided.py
# @Software: PyCharm
import pickle

import json

import numpy

with open('proceeded/paper_catory.pkl', 'rb') as f:
    paper_cat_list = pickle.load(f)

with open('proceeded/expert_catory.pkl', 'rb') as f:
    expert_cat_list = pickle.load(f)

with open('benchmark/results_0415.json', 'r', encoding='utf-8')as f:
    res = json.load(f)

result = {}
for item in res:
    result[item['pub_id']] = item['experts']

expert_divided = [[] for i in range(100)]
for i, expert in enumerate(expert_cat_list):
    for paper in expert:
        for c in paper:
            expert_divided[c].append(i)

with open('proceeded/paper_index2id.json', 'r')as f:
    paper_index2id = json.load(f)

eva = []
for i, paper in enumerate(paper_cat_list[:1000]):
    expert_candidate = []
    for c in paper:
        expert_candidate += expert_divided[c]
    print(len(expert_candidate))
    sum = 0
    for correct in result[paper_index2id[i]]:
        if correct in expert_candidate:
            sum += 1
    score = sum / len(result[paper_index2id[i]])
    print(score)
    eva.append(score)
print(numpy.array(eva).mean())
