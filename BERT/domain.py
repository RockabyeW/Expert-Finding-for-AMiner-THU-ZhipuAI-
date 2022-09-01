#coding:utf-8
import numpy as np
from scipy.linalg import norm
from gensim.models import KeyedVectors
import pymongo
from sentence_transformers import SentenceTransformer
sbert_model_path = 'E:\学习资料\ML\wenge\model\sbert-model'
model = SentenceTransformer(sbert_model_path)

def upload_project_vector(text):
        vector = (model.encode([text]).tolist()[0])
        return vector


# if __name__ == "__main__":
#     text = '本文以我国2004-2010年沪深A股非金融上市公司为样本,基于上市公司所在地区的市场化进程和所处行业的竞争程度,检验管理者权力对资本投资价值的影响'
#     print(upload_project_vector(text))



def vector_similarity(s1, s2):
    v1, v2 = upload_project_vector(s1), upload_project_vector(s2)
    return np.dot(v1, v2) / (norm(v1) * norm(v2))

# s1 = '本文以我国2004-2010年沪深A股非金融上市公司为样本,基于上市公司所在地区的市场化进程和所处行业的竞争程度,检验管理者权力对资本投资价值的影响。研究发现,管理者权力与资本投资价值负相关;上市公司所在地区的市场化进程能够减弱管理者权力对资本投资价值的负面影响;与处于完全竞争行业的公司相比,处于保护性行业的上市公司中,管理者权力对资本投资价值的负面影响更显著。'
# s2 = '本文以深圳证券市场A股上市公司为样本,研究中国上市公司的信息披露质量是否会对其股权融资成本产生影响。我们采用剩余收益模型计算上市公司的股权融资成本,分别以披露总体质量与盈余披露质量指标反映上市公司的信息披露质量。研究发现,在控制β系数、公司规模、账面市值比、杠杆率、资产周转率等因素的条件下,信息披露质量较高的样本公司边际股权融资成本较低,这说明我国上市公司的信息披露质量会对其股权融资成本产生积极影响。研究还发现,盈余平滑度和披露总体质量是影响样本公司股权融资成本的主要信息披露质量特征。最后基于上述发现提出了若干政策建议。'
#
#
# print(vector_similarity(s1, s2))
#
# s3 = "本文以我国2004-2010年沪深A股非金融上市公司为样本,基于上市公司所在地区的市场化进程和所处行业的竞争程度,检验管理者权力对资本投资价值的影响。研究发现,管理者权力与资本投资价值负相关;上市公司所在地区的市场化进程能够减弱管理者权力对资本投资价值的负面影响;与处于完全竞争行业的公司相比,处于保护性行业的上市公司中,管理者权力对资本投资价值的负面影响更显著。"
# s4 = "比较中成药康艾注射液联合5-氟脲嘧啶(5-FU)、奥沙利铂与单用化疗治疗晚期大肠癌的临床疗效。晚期大肠癌患者,随机分为治疗组(康艾注射液加化疗)、对照组(化疗)。均治疗4~6个疗程,观察临床疗效、生活质量和不良反应以及生存率和中位生存期。治疗组改善生活质量和不良反应明显优于对照组(P<0.05),但2组临床疗效及1、2、3年生存率和中位生存期方面比较差异无统计学意义(P>0.05)。康艾注射液可明显改善晚期大肠癌患者的生活质量和减少化疗药物不良反应。"
#
# print(vector_similarity(s3, s4))

s5 = "good pho"
s6 = "good food"
print(vector_similarity(s5, s6))