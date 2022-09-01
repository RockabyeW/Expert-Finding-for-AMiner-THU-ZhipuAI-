#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time : 2021/5/11 19:05
# @Author : gsg
# @Site : 
# @File : cluster.py
# @Software: PyCharm
import json
import pickle

import numpy as np
from sklearn import metrics

from sklearn.cluster import SpectralClustering
from tqdm import tqdm


def euclidDistance(x1, x2, sqrt_flag=False):
    res = np.sum((x1 - x2) ** 2)
    if sqrt_flag:
        res = np.sqrt(res)
    return res


#
#
# def calEuclidDistanceMatrix(X):
#     X = np.array(X)
#     S = np.zeros((len(X), len(X)))
#     for i in tqdm(range(len(X))):
#         for j in range(i + 1, len(X)):
#             S[i][j] = 1.0 * euclidDistance(X[i], X[j])
#             S[j][i] = S[i][j]
#
#     np.save('proceeded/sim', S)
#     return S
#
#
# def myKNN(S, k, sigma=1.0):
#     N = len(S)
#     A = np.zeros((N, N))
#
#     for i in tqdm(range(N)):
#         dist_with_index = zip(S[i], range(N))
#         dist_with_index = sorted(dist_with_index, key=lambda x: x[0])
#         neighbours_id = [dist_with_index[m][1] for m in range(k + 1)]  # xi's k nearest neighbours
#
#         for j in neighbours_id:  # xj is xi's neighbour
#             A[i][j] = np.exp(-S[i][j] / 2 / sigma / sigma)
#             A[j][i] = A[i][j]  # mutually
#
#     np.save('proceeded/adj', A)
#     return A
#
#
# print('loading')
# paper_embed = np.load('proceeded/paper_embedding.npy')
# print("cal sim")
# sim = calEuclidDistanceMatrix(paper_embed.squeeze())
# print("cal adj")
# adj = myKNN(sim, k=8)
#
# adj = np.load('proceeded/adj.npy')
# for gamma in [0.01, 0.1, 1, 10]:
#     for k in [3, 4, 5, 6]:
#         y_pred = SpectralClustering().fit_predict(adj)
#         print("Calinski-Harabasz Score with gamma=", gamma, "n_clusters=", k, "score:",
#               metrics.calinski_harabasz_score(adj, y_pred))

with open('proceeded/catory.json', 'r') as f:
    catogary_info = json.load(f)

paper_embed = np.load('proceeded/paper_embedding.npy')
with open('proceeded/expert_whole_embedding.pkl', 'rb') as f:
    expert_whole_embed = pickle.load(f)

paper_cat_list = []
for p in tqdm(paper_embed):
    paper_cat = []
    paper_dis_dict = {}
    for i, item in enumerate(catogary_info.items()):
        k, v = item
        dis = euclidDistance(v['center'], p, sqrt_flag=True)
        if dis < v['radius']:
            paper_cat.append(i)
        else:
            paper_dis_dict[k] = dis
    if len(paper_cat) == 0:
        paper_dis = sorted(paper_dis_dict.items(), key=lambda x: x[1], reverse=False)
        paper_cat = [i[0] for i in paper_dis[:3]]
    paper_cat_list.append(paper_cat)

# expert_cat_list = []
# for expert in tqdm(expert_whole_embed):
#     expert_paper_cat_list = []
#     for embed in expert:
#         expert_paper_cat = []
#         expert_paper_dis_dict = {}
#         for i, item in enumerate(catogary_info.items()):
#             k, v = item
#             dis = euclidDistance(v['center'], embed, sqrt_flag=True)
#             if dis < v['radius']:
#                 expert_paper_cat.append(i)
#             else:
#                 expert_paper_dis_dict[k] = dis
#         if len(expert_paper_cat) == 0:
#             expert_paper_dis = sorted(expert_paper_dis_dict.items(), key=lambda x: x[1], reverse=False)
#             expert_paper_cat = [i[0] for i in expert_paper_dis[:3]]
#         expert_paper_cat_list.append(expert_paper_cat)
#     expert_cat_list.append(expert_paper_cat_list)

with open('proceeded/paper_catory.pkl', 'wb') as f:
    pickle.dump(paper_cat_list, f)

# with open('proceeded/expert_catory.pkl', 'wb') as f:
#     pickle.dump(expert_cat_list, f)
