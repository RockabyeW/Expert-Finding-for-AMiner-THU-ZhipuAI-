#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time : 2021/5/5 18:52
# @Author : gsg
# @Site : 
# @File : tSNE.py
# @Software: PyCharm
import json

from sklearn.manifold import TSNE
import numpy as np
import matplotlib.pyplot as plt

embedding = np.load('proceeded/paper_embedding.npy')

embedding = embedding.squeeze()

with open('proceeded/paper_index2id.json', 'r')as f:
    paper_index2id = json.load(f)

tsne = TSNE(n_components=2)
tsne_embedding = tsne.fit_transform(embedding)
plt.figure(figsize=(50, 20))
plt.title('TSNE')
plt.scatter(tsne_embedding[:, 0], tsne_embedding[:, 1], marker='o')
# for i, x in enumerate(tsne_embedding[0:100]):
#     x = x.tolist()
#     plt.annotate(paper_index2id[str(i)], xy=(x[0], x[1]), xytext=(x[0], x[1]))
plt.show()
