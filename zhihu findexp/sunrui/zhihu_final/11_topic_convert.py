import pandas as pd
import pickle

with open('./pkl/question_info.pkl', 'rb') as file:
    question_info = pickle.load(file)

invite_info = pd.read_hdf('./my_feat/convert_train.h5', key='data')
invite_info_evaluate = pd.read_hdf('./my_feat/convert_test_b.h5', key='data')

question_info = question_info[['question_id', 'topic']]

invite_info = invite_info[['question_id', 'author_id', 'label']]
invite_info['idx'] = invite_info.index  # 加编号 方便等下concat回去
invite_info = invite_info.merge(question_info, on='question_id', how='left')

invite_info['topic'] = invite_info['topic'].map(lambda x: ','.join([str(i) for i in x]))

train_df = invite_info['topic'].str.split(',', expand=True).stack() \
    .reset_index(level=0).set_index('level_0') \
    .rename(columns={0: 'topic'}).join(invite_info.drop('topic', axis=1)) \
    .reset_index(drop=True)
train_df['topic'] = train_df['topic'].map(int)

invite_info_evaluate = invite_info_evaluate[['question_id', 'author_id']]
invite_info_evaluate['idx'] = invite_info_evaluate.index  # 加编号 方便等下concat回去
invite_info_evaluate = invite_info_evaluate.merge(question_info, on='question_id', how='left')
invite_info_evaluate['topic'] = invite_info_evaluate['topic'].map(lambda x: ','.join([str(i) for i in x]))

test_df = invite_info_evaluate['topic'].str.split(',', expand=True).stack() \
    .reset_index(level=0).set_index('level_0') \
    .rename(columns={0: 'topic'}).join(invite_info_evaluate.drop('topic', axis=1)) \
    .reset_index(drop=True)

test_df['topic'] = test_df['topic'].map(int)

import time

import pandas as pd
from sklearn.model_selection import KFold, StratifiedKFold
import numpy as np
import scipy.special as special


def log(log: str):
    print(log)


def time_log(time_elapsed):
    print('complete in {:.0f}m {:.0f}s'.format(time_elapsed // 60, time_elapsed % 60))  # 打印出来时间


def log_event(event: str):
    log(event)


class HyperParam(object):
    def __init__(self, alpha, beta):
        self.alpha = alpha
        self.beta = beta

    def sample_from_beta(self, alpha, beta, num, imp_upperbound):
        sample = np.random.beta(alpha, beta, num)
        I = []
        C = []
        for click_ratio in sample:
            imp = np.random.random() * imp_upperbound
            # imp = imp_upperbound
            click = imp * click_ratio
            I.append(imp)
            C.append(click)
        return I, C

    def update_from_data_by_FPI(self, tries, success, iter_num, epsilon):
        '''estimate alpha, beta using fixed point iteration'''
        for i in range(iter_num):
            new_alpha, new_beta = self.__fixed_point_iteration(tries, success, self.alpha, self.beta)
            if abs(new_alpha - self.alpha) < epsilon and abs(new_beta - self.beta) < epsilon:
                break
            self.alpha = new_alpha
            self.beta = new_beta

    def __fixed_point_iteration(self, tries, success, alpha, beta):
        '''fixed point iteration'''
        sumfenzialpha = 0.0
        sumfenzibeta = 0.0
        sumfenmu = 0.0
        for i in range(len(tries)):
            sumfenzialpha += (special.digamma(success[i] + alpha) - special.digamma(alpha))
            sumfenzibeta += (special.digamma(tries[i] - success[i] + beta) - special.digamma(beta))
            sumfenmu += (special.digamma(tries[i] + alpha + beta) - special.digamma(alpha + beta))

        return alpha * (sumfenzialpha / sumfenmu), beta * (sumfenzibeta / sumfenmu)

    def update_from_data_by_moment(self, tries, success):  # tries尝试了多少次ctr  success 命中了多少次ctr
        '''estimate alpha, beta using moment estimation'''
        mean, var = self.__compute_moment(tries, success)
        # print 'mean and variance: ', mean, var
        # self.alpha = mean*(mean*(1-mean)/(var+0.000001)-1)
        self.alpha = (mean + 0.000001) * ((mean + 0.000001) * (1.000001 - mean) / (var + 0.000001) - 1)
        # self.beta = (1-mean)*(mean*(1-mean)/(var+0.000001)-1)
        self.beta = (1.000001 - mean) * ((mean + 0.000001) * (1.000001 - mean) / (var + 0.000001) - 1)

    def __compute_moment(self, tries, success):
        '''
        moment estimation
        '''
        ctr_list = []
        var = 0.0
        for i in range(len(tries)):
            ctr_list.append(float(success[i]) / (tries[i] + 0.000000001))
        mean = sum(ctr_list) / len(ctr_list)
        for ctr in ctr_list:
            var += pow(ctr - mean, 2)

        return mean, var / (len(ctr_list) - 1)


def merge_test(train_df, test_df, feature_name, is_fill_na):
    temp = train_df.groupby(feature_name, as_index=False)['label'].agg(
        {feature_name + '_label_count': 'sum', feature_name + '_all_count': 'count'})
    HP = HyperParam(1, 1)
    HP.update_from_data_by_moment(temp[feature_name + '_all_count'].values,
                                  temp[feature_name + '_label_count'].values)  # 矩估计
    temp[feature_name + '_convert'] = (temp[feature_name + '_label_count'] + HP.alpha) / (
            temp[feature_name + '_all_count'] + HP.alpha + HP.beta)
    temp = temp[[feature_name, feature_name + '_convert', feature_name + '_label_count']].drop_duplicates()
    test_df = pd.merge(test_df, temp, on=[feature_name], how='left')
    if is_fill_na:
        test_df[feature_name + '_convert'].fillna(HP.alpha / (HP.alpha + HP.beta), inplace=True)
    return test_df


def merge_train(kfold_4_df, kfold_1_df, feature_name, is_fill_na):  # 用其他训练集的四折的数据去merge一折的
    temp = kfold_4_df.groupby(feature_name, as_index=False)['label'].agg(
        {feature_name + '_label_count': 'sum', feature_name + '_all_count': 'count'})
    HP = HyperParam(1, 1)
    HP.update_from_data_by_moment(temp[feature_name + '_all_count'].values,
                                  temp[feature_name + '_label_count'].values)  # 矩估计
    temp[feature_name + '_convert'] = (temp[feature_name + '_label_count'] + HP.alpha) / (
            temp[feature_name + '_all_count'] + HP.alpha + HP.beta)
    temp = temp[[feature_name, feature_name + '_convert', feature_name + '_label_count']].drop_duplicates()
    kfold_1_df = pd.merge(kfold_1_df, temp, on=[feature_name], how='left')
    if is_fill_na:
        kfold_1_df[feature_name + '_convert'].fillna(HP.alpha / (HP.alpha + HP.beta), inplace=True)
    return kfold_1_df


n_splits = 5
is_shuffle = False
feature_name = 'topic'
is_fill_nan = True

since = time.time()
test_df = merge_test(train_df, test_df, feature_name, is_fill_nan)
time_elapsed = time.time() - since
time_log(time_elapsed)

test_df['topic_convert_mean'] = test_df.groupby(['question_id', 'author_id'])['topic_convert'].transform('mean')
test_df['topic_convert_max'] = test_df.groupby(['question_id', 'author_id'])['topic_convert'].transform('max')

test_df.drop_duplicates(['idx'], inplace=True)

test_df.reset_index(drop=True, inplace=True)
topic_convert_test_df = test_df[['topic_convert_mean', 'topic_convert_max', 'topic_label_count']]
print(topic_convert_test_df.shape)
topic_convert_test_df = pd.concat([invite_info_evaluate, topic_convert_test_df], axis=1)
print(topic_convert_test_df.shape)

topic_convert_test_df[['topic_convert_mean', 'topic_convert_max', 'topic_label_count']].to_hdf(
    './my_feat/topic_convert_test_df_b.h5', key='data', index=None)
