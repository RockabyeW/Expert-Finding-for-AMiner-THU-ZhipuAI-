# # -*- coding:utf-8 -*-
# from gensim.models import KeyedVectors
#
# model_zh = KeyedVectors.load("tmp\keywords_aminer_zh")
#
# # print(model_zh["机器学习"])
# # print(model_zh.most_similar("数据挖掘"))
#
# # from src.tokenizer import tokenizer, zh_process_func, en_process_func
# # import nltk
# # nltk.download('punkt')
# # tok_zh = tokenizer(set(model_zh.wv.index2word), zh_process_func)
# # tok_en = tokenizer(set(model_en.wv.index2word), en_process_func)
# #
# # print(tok_zh.tokenize("机器翻译是自然语言处理的一个子领域。", max_len=None))
# # print(tok_en.tokenize("Machine translation is a sub-domain of natural language processing.", max_len=None)) # Maybe you need nltk.download('punkt') if failed
#
# # model_zh.similarity('计算', '计算机')
#
# print(model_zh.similarity('数据挖掘', '关联规则'))
# -*- coding: utf-8 -*-
import gensim
import jieba
import numpy as np
from scipy.linalg import norm

# model_file = 'C:/Users/Administrator/Desktop//word2vec/news_12g_baidubaike_20g_novel_90g_embedding_64.bin'
# model = gensim.models.KeyedVectors.load_word2vec_format(model_file, binary=True)
# from gensim.models import KeyedVectors
#
# model = KeyedVectors.load("tmp\keywords_aminer_zh")
# from src.tokenizer import tokenizer, zh_process_func, en_process_func
# tok_zh = tokenizer(set(model.wv.index2word), zh_process_func)
#
# # print(list(filter(lambda x: not str(x).isdigit(), tok_zh.tokenize("机器翻译是自然语言处理的一个子领域。", max_len=None))))
#
# from src.distill import distill
# s = "机器翻译是自然语言处理的一个子领域。"
# words = tok_zh.tokenize(s, max_len=None)
# print(distill(model, words, lang='zh'))

# -*- coding: utf-8 -*-
import gensim
import jieba
import numpy as np
from scipy.linalg import norm
import jieba.analyse
# model_file = 'C:/Users/Administrator/Desktop//word2vec/news_12g_baidubaike_20g_novel_90g_embedding_64.bin'
# model = gensim.models.KeyedVectors.load_word2vec_format(model_file, binary=True)
from gensim.models import KeyedVectors
import pymongo

EXPERTS_ZH = {
    'host': '192.168.6.221',
    'port': 47018,
    'username': '',
    'password': '',
}

def connectMongodb(config, database=None, collection=None):
    client = pymongo.MongoClient(**config)
    db = client[database]
    col = db[collection]
    return col

# benchmark_experts_cs_col = connectMongodb(EXPERTS_ZH, database='benchmark_www', collection='experts_cs')



model = KeyedVectors.load("tmp\keywords_aminer_zh")

# model = gensim.models.KeyedVectors.load_word2vec_format("tmp\keywords_aminer_zh", binary=True)

from src.tokenizer import tokenizer, zh_process_func
tok_zh = tokenizer(set(model.wv.index2word), zh_process_func)
# print(tok_zh.tokenize("机器翻译是自然语言处理的一个子领域。", max_len=None))
# print(jieba.lcut("机器翻译是自然语言处理的一个子领域。"))

def sentence_vector(s):
    # words = jieba.lcut(s)
    words = tok_zh.tokenize(s, max_len=None)
    # print(words)
    v = np.zeros(200)
    for word in words:
        v += model[word]
    v /= len(words)
    return v

print(sentence_vector('刘子羽是一个傻逼'))


