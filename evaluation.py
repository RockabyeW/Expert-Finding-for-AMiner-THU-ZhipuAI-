import json
import pymongo



# 准确率
def calc_precision(reviewers, recommend_reviewers,topn):
    if recommend_reviewers == None:
        return 0
    recommend_reviewers = recommend_reviewers[:topn]
    return len(set(reviewers) & set(recommend_reviewers)) / len(recommend_reviewers)

# 召回率
def calc_recall(reviewers, recommend_reviewers,topn):
    if recommend_reviewers == None:
        return 0
    recommend_reviewers = recommend_reviewers[: topn]
    set_jiaoji = set(reviewers) & set(recommend_reviewers)
    # print(set_jiaoji)
    return len(set_jiaoji) / len(reviewers)


def average(scores):
    sum = 0
    for score in scores:
        sum += score
    return sum / len(scores)


if __name__ == '__main__':
    AMINER_DATA = {
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


    client = pymongo.MongoClient('192.168.6.221', 47018)
    public_data = client['public_data']

    mini_profiles_col = connectMongodb(AMINER_DATA, database='public_data', collection='mini_profiles')
    mini_project_col = connectMongodb(AMINER_DATA, database='public_data', collection='mini_project')
    mini_result_col = connectMongodb(AMINER_DATA, database='public_data', collection='mini_result')
    mini_app_col = connectMongodb(AMINER_DATA, database='public_data', collection='mini_appliation')


    # 评测
    recommend_reviewers = ['16952268','2475427']
    app_id = 'jsjyyyrj201212058'
    app_result_db = mini_result_col.find_one({'id':app_id})
    app_result = app_result_db['results']
    reviewers = [item['id'] for item in app_result]

    # 准确率
    p = calc_precision(reviewers, recommend_reviewers,2)
    # 召回率
    r = calc_recall(reviewers, recommend_reviewers, 2)

    print('precision:{}'.format(p))
    print('recall:{}'.format(r))

