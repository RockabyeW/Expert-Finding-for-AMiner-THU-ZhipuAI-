import sys
import requests
from bson import ObjectId
from pymongo import MongoClient
from bson.codec_options import CodecOptions

MONGO_HOST = "192.168.6.208"
MONGO_PORT = 27017
MONGO_DB = "test_aminer"
MONGO_USERNAME = "test_aminer_api"
MONGO_PASSWORD = "testaminerpass123"

class MongoDBClient(object):
	def __init__(self, host=MONGO_HOST, port=MONGO_PORT, db_name=MONGO_DB,
				 user=MONGO_USERNAME, password=MONGO_PASSWORD):
		self.client = MongoClient(host, port)
		db_auth = self.client["test_aminer"]
		db_auth.authenticate(user, password)
		self.db = self.client[db_name]
		self.terms_col = self.db["terms"]
		self.coterms_col = self.db["terms_co_all"]

	def getName(self, tid):
		term_object = self.terms_col.find_one({'_id': tid}, {'name': 1})
		if term_object is None or 'name' not in term_object: return ''
		return term_object['name']

	def getId(self, name):
		term_object = self.terms_col.find_one({'name': name}, {'_id': 1})
		if term_object is None: return None
		return term_object['_id']

	def getTermFreq(self, name):
		term_object = self.terms_col.find_one({'name': name}, {'tf': 1})
		if term_object is None: return 0
		return term_object['tf']

	def getCoterms(self, term):                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
		term_object = self.terms_col.find_one({"alias": {"$elemMatch": {"m": term}}}, {'_id': 1})
		if term_object is None: return []
		term_id = term_object['_id']
		term_object = self.coterms_col.find_one({'_id': term_id})
		coterms = sorted(term_object['coterms'], key=lambda x: x['n'])
		coterms = term_object['coterms']
		return coterms

class ModelFang(object):
	def __init__(self):
		self.api = "https://apiv2.aminer.cn/magic?a=search.search"
		self.client = MongoDBClient()
		self.stop_words = ["data set", "training data", "experimental result", "single machine", "input output", "difficult learning problem", "user query", "case study", "extended abstract", "web page", "data source", "proposed algorithm", "natural language", "language processing", "discrete time", "proposed method", "real data", "international conference", "digital library", "vector machines", "proposed approach", "access control", "new approach", "large number", "particle swarm", "indexing terms", "synthetic data", "real images", "special issue", "support vector", "training set", "new method", "learning artificial intelligence", "part ii", "lecture notes", "acm conference", "extreme learning machine", "learning artificial intelligence"]

	def cleanKeyword(self, keyword):
		if '(' in keyword:
			tmp_keys = keyword.split('(')
			if len(tmp_keys) == 2:
				keyword = tmp_keys[0]
				if keyword == '':
					keyword = tmp_keys[1].replace(')', '')
		keyword = keyword.strip()
		return keyword

	def getHyponym(self, given_term, n):
		payload = [
			{
				"action": "dm_intellwords.expand",
			 	"parameters": {
					"query": given_term,
					"kgFromabbr": True,
					"lang_zh": True,
					"types": [
						{"type": "kghyponym", "total": n, "random": 0},
					]
				}
			}
		]
		r = requests.post(self.api, json=payload)
		resp = r.json()

		hyponyms = []
		if 'data' in resp:
			for data in resp['data']:
				if 'items' in data:
					for item in data['items']:
						if 'kgHyponym' in item:
							hyponyms = [ term['word'].lower() for term in item['kgHyponym'] ]

		return hyponyms

	def getKeywords(self, given_term, n):
		given_term = given_term.lower()
		keywords = [given_term]
		keywords += self.getHyponym(given_term, n)

		i = 0
		while len(keywords) < n:
			prev_len = len(keywords)
			for keyword in keywords:
				subkeywords = self.getHyponym(keyword, n)
				if len(subkeywords) > i and subkeywords[i] not in keywords:
					keywords.append(subkeywords[i])
				if len(keywords) >= n:
					break
			if len(keywords) == prev_len: break
			i += 1

		if len(keywords) < n:
			coterms = self.client.getCoterms(given_term)
			for term in coterms:
				keyword = self.cleanKeyword(self.client.getName(term['id']))
				if len(keyword) == 1 or keyword in self.stop_words or ' ' not in keyword:
					continue
				keywords.append(keyword)
				if len(keywords) >= n:
					break

		return keywords[:n]


		return keywords


if __name__ == '__main__':
	model = ModelFang()
	keywords = model.getKeywords('关键词提取', 7)
	print(keywords, len(keywords))

