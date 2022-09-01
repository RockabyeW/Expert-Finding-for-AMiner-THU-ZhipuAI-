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

def vector_similarity(s1, s2):
    v1, v2 = sentence_vector(s1), sentence_vector(s2)
    return np.dot(v1, v2) / (norm(v1) * norm(v2))


s1 = "本文以我国2004-2010年沪深A股非金融上市公司为样本,基于上市公司所在地区的市场化进程和所处行业的竞争程度,检验管理者权力对资本投资价值的影响。研究发现,管理者权力与资本投资价值负相关;上市公司所在地区的市场化进程能够减弱管理者权力对资本投资价值的负面影响;与处于完全竞争行业的公司相比,处于保护性行业的上市公司中,管理者权力对资本投资价值的负面影响更显著。"
s2 = "本文以深圳证券市场A股上市公司为样本,研究中国上市公司的信息披露质量是否会对其股权融资成本产生影响。我们采用剩余收益模型计算上市公司的股权融资成本,分别以披露总体质量与盈余披露质量指标反映上市公司的信息披露质量。研究发现,在控制β系数、公司规模、账面市值比、杠杆率、资产周转率等因素的条件下,信息披露质量较高的样本公司边际股权融资成本较低,这说明我国上市公司的信息披露质量会对其股权融资成本产生积极影响。研究还发现,盈余平滑度和披露总体质量是影响样本公司股权融资成本的主要信息披露质量特征。最后基于上述发现提出了若干政策建议。"


print(vector_similarity(s1, s2))

s3 = "本文以我国2004-2010年沪深A股非金融上市公司为样本,基于上市公司所在地区的市场化进程和所处行业的竞争程度,检验管理者权力对资本投资价值的影响。研究发现,管理者权力与资本投资价值负相关;上市公司所在地区的市场化进程能够减弱管理者权力对资本投资价值的负面影响;与处于完全竞争行业的公司相比,处于保护性行业的上市公司中,管理者权力对资本投资价值的负面影响更显著。"
s4 = "比较中成药康艾注射液联合5-氟脲嘧啶(5-FU)、奥沙利铂与单用化疗治疗晚期大肠癌的临床疗效。晚期大肠癌患者,随机分为治疗组(康艾注射液加化疗)、对照组(化疗)。均治疗4~6个疗程,观察临床疗效、生活质量和不良反应以及生存率和中位生存期。治疗组改善生活质量和不良反应明显优于对照组(P<0.05),但2组临床疗效及1、2、3年生存率和中位生存期方面比较差异无统计学意义(P>0.05)。康艾注射液可明显改善晚期大肠癌患者的生活质量和减少化疗药物不良反应。"

print(vector_similarity(s3, s4))


# myclient = pymongo.MongoClient("mongodb://192.168.6.221:47018/")
# mydb = myclient["benchmark_www"]
# mycol = mydb["pubs_cs"]
# for x in mycol.find({},{"_id", "Title", "Abstract"}):
#     _id = x["_id"]
#     title = x["Title"]
#     abstract = x["Abstract"]
#     AWOEdoc2vec_title = np.array(np.ravel(sentence_vector(title[0]))).astype(float).tolist()
#     AWOEdoc2vec_abstract = np.array(np.ravel(sentence_vector(abstract[0]))).astype(float).tolist()
#     project_vector = [{'AWOEdoc2vec_title': AWOEdoc2vec_title},{'AWOEdoc2vec_abstract': AWOEdoc2vec_abstract }]
#     myquery = {"_id": _id}
#     newvalues = {'$set':{'project_vector':project_vector}}
#     mycol.update_one(myquery, newvalues)




# project_vector = [{"prj_no":'论文的ID','v':'AWOE的doc2vec'},...]
# benchmark_experts_cs_col.update_one({'Id':Id},{'$set':{'project_vector':project_vector}})








