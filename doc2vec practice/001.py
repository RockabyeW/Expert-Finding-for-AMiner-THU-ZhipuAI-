# -*- coding: utf-8 -*-

import xlrd
import xlsxwriter
import os
import jieba
import gensim
from gensim.models.doc2vec import Doc2Vec, TaggedDocument
import pandas as pd

def get_file_data_to_a_file(path):
    '''
    读取文件路径下的所有文件到一个文件路径列表中,并依次读取每个文件中的数据
    最后将所有数据保存到一个文件中
    '''
    paths = os.listdir(path)
    file_paths = []
    for file_name in paths:
        if os.path.splitext(file_name)[1] == ".xlsx":
            file_paths.append(path + file_name)

    rvalues = []
    for i, file in enumerate(file_paths):  # 遍历文件列表paths
        fh = xlrd.open_workbook(file)  # 打开一个excel文件
        #            sheet_name = os.path.splitext(file_name)[0]
        table = fh.sheets()[0]  # 获取excel文件的第一个sheet表
        num_rows = table.nrows  # 该表的的所有行数
        for row in range(num_rows):
            rdata = table.row_values(row)  # 获取每一行的数据
            rvalues.append(rdata)

    endfile = 'train_excel.xlsx'
    wb1 = xlsxwriter.Workbook(endfile)
    ws = wb1.add_worksheet()  # 添加一个新的工作表
    for a in range(len(rvalues)):
        for b in range(len(rvalues[a])):
            c = rvalues[a][b]
            ws.write(a, b, c)
    wb1.close()
    print("文件合并完成")


if __name__ == "__main__":
    get_file_data_to_a_file("./meituan/")


def getText(path):
    df_train = pd.read_excel('train_excel.xlsx')
    comment_train = list(df_train['comment'].astype(str))
    return comment_train

text = getText("./")
print(text[0:10]) #打印前10行数据


def cut_sentence(text):
    stop_list = [line[:-1] for line in open("中文停用词表.txt",encoding='gb18030', errors='ignore')]
    result = []
    for each in text:
        each_cut = jieba.cut(each)
        each_split = ' '.join(each_cut).split()
        each_result = [word for word in each_split if word not in stop_list] #去除停用词
        result.append(' '.join(each_result))
    return result

b = cut_sentence(text)
print(b[0:10])

TaggededDocument=gensim.models.doc2vec.TaggedDocument

def X_train(cut_sentence):
    x_train = []
    for i, text in enumerate(cut_sentence):
        word_list = text.split(' ')
        l = len(word_list)
        word_list[l-1] = word_list[l-1].strip()
        document = TaggededDocument(word_list,tags=[i])
        x_train.append(document)
    return x_train

c = X_train(b)
print(c[0:10])

def train(x_train, size=300):
    model = Doc2Vec(x_train,min_count=1,window=3,size=size,sample=1e-3,negative=5,workers=4)
    model.train(x_train,total_examples=model.corpus_count,epochs=10)
    return model

model_dm = train(c)

#str1 = u'这里 的 演出 真的 很 棒 ！'
str1 = u'一点 都 不 好玩'
test_text = str1.split(' ')
inferred_vector = model_dm.infer_vector(doc_words=test_text,alpha=0.025,steps=300)

sims = model_dm.docvecs.most_similar([inferred_vector],topn=10)
for count,sim in sims:
    sentence = text[count]
    words = ''
    for word in sentence:
        words = words + word + ' '
    print(words, sim, len(sentence))

