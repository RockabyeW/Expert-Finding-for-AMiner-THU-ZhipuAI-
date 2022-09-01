#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time : 2021/5/8 7:26
# @Author : gsg
# @Site : 
# @File : keywords.py
# @Software: PyCharm
import json

import math
import numpy as np
from collections import Counter

from tqdm import tqdm

import pickle
import miniball

if __name__ == '__main__':
    # paper_keywords = []
    # expert_keywords = []
    #
    # with open('benchmark/publications_0415.json', 'r', encoding='utf-8')as f:
    #     papers = json.load(f)

    # for p in tqdm(papers):
    #     paper_keywords += (p['keywords'])

    # experts = []
    # for i in [0, 1, 2, 3, 4]:
    #     with open('benchmark/experts' + str(i) + '.json', 'r', encoding='utf-8')as f:
    #         experts += json.load(f)
    #
    # for e in tqdm(experts):
    #     for pub in e['pub_info']:
    #         if 'keywords' in pub:
    #             expert_keywords += pub['keywords']
    #     # if 'tags' in e and e['tags'] is not None:
    #     #     for t in e['tags']:
    #     #         expert_keywords.append(t['t'])
    #     # if 'interets' in e and e['interets'] is not None:
    #     #     for t in e['interets']:
    #     #         expert_keywords.append(t['t'])
    #
    # keywords = paper_keywords + expert_keywords
    # paper_keywords_counter = Counter(paper_keywords)
    # expert_keywords_counter = Counter(expert_keywords)
    # keywords_counter = Counter(keywords)
    #
    # with open('proceeded/papper_keywords.json', 'w') as f:
    #     json.dump(paper_keywords_counter, f, indent=4)
    #
    # with open('proceeded/expert_kaywords.json', 'w') as f:
    #     json.dump(expert_keywords_counter, f, indent=4)
    #
    # with open('proceeded/keywords.json', 'w') as f:
    #     json.dump(keywords_counter, f, indent=4)
    #
    # u = set(paper_keywords) & (set(expert_keywords))
    # print(len(u) / (len(paper_keywords)))

    # paper_embed = np.load('proceeded/paper_embedding.npy')
    # with open('proceeded/expert_whole_embedding.pkl', 'rb') as f:
    #     expert_whole_embed = pickle.load(f)

    # expert_whole_embed_list=[]
    # for e in expert_whole_embed:
    #     expert_whole_embed_list+=e
    # expert_whole_embed_np=np.array(expert_whole_embed_list)
    with open('proceeded/keywords.json', 'r') as f:
        keywords = json.load(f)

    sorted_keywords = sorted(keywords.items(), key=lambda x: x[1], reverse=True)

    catogary = [k[0] for k in sorted_keywords[:100]]
    #
    # catogary2index = {c: i for i, c in enumerate(catogary)}
    # catogary_embed = [[] for i in range(100)]
    # for i, paper in tqdm(enumerate(papers)):
    #     for k in paper['keywords']:
    #         if k in catogary2index:
    #             catogary_embed[catogary2index[k]].append(paper_embed[i])
    #
    # for i, e in tqdm(enumerate(experts)):
    #     for j, p in enumerate(e['pub_info']):
    #         if 'keywords' in p:
    #             for k in p['keywords']:
    #                 if k in catogary2index:
    #                     catogary_embed[catogary2index[k]].append(expert_whole_embed[i][j])
    #
    # with open('catogary_embed.pkl', 'wb') as f:
    #     pickle.dump(catogary_embed, f)

    with open('catogary_embed.pkl', 'rb') as f:
        catogary_embed = pickle.load(f)

    catogary_info = {}
    for i, c in tqdm(enumerate(catogary_embed)):
        mb = miniball.Miniball(np.array(c).squeeze().tolist())
        print(mb.is_valid())
        catogary_info[catogary[i]] = {'center': mb.center(), 'radius': math.sqrt(mb.squared_radius())}

    with open('proceeded/catory.json', 'w') as f:
        json.dump(catogary_info, f)



