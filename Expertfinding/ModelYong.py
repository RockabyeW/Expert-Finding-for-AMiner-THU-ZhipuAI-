import time
import json
from bson import ObjectId
from pymongo import MongoClient
from bson.codec_options import CodecOptions

# "Host":"192.168.6.208",
# "Port":27017,
# "Database":"test_aminer",
# "User":"test_aminer_api",
# "Password":"testaminerpass123"

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
		return self.terms_col.find_one({'_id': tid}, {'name': 1})["name"]

	def getId(self, name):
		term_object = self.terms_col.find_one({'name': name}, {'_id': 1})
		if term_object is None: return None
		return term_object['_id']

	def getCoterms(self, term):                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
		term_object = self.terms_col.find_one({"alias": {"$elemMatch": {"m": term}}}, {'_id': 1})
		if term_object is None: return []
		term_id = term_object['_id']
		term_object = self.coterms_col.find_one({'_id': term_id})
		coterms = sorted(term_object['coterms'], key=lambda x: x['n'])
		coterms = term_object['coterms']
		return coterms


class ModelYong(object):
	def __init__(self):
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

	def getKeywords(self, given_term, n):
		given_term = given_term.lower()
		coterms = self.client.getCoterms(given_term)
		keywords = [given_term]
		for term in coterms:
			keyword = self.client.getName(term['id'])
			keyword = self.cleanKeyword(keyword)
			if len(keyword) == 1 or keyword in self.stop_words or ' ' not in keyword:
				continue
			keywords.append(keyword)
			if len(keywords) >= n: break
		return keywords

if __name__ == '__main__':
	model = ModelYong()
	keywords = model.getKeywords('关键词提取', 7)
	print(keywords, len(keywords))