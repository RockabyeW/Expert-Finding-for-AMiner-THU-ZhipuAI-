import sys
import requests
import time
import json
from bson import ObjectId
from pymongo import MongoClient
from bson.codec_options import CodecOptions
from nltk.stem import PorterStemmer 

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
		self.person_col = self.db["person"]
		self.pub_col = self.db["publication_dupl"]

	def getPersons(self, aids):
		person_objects = self.person_col.find({'_id': {"$in": aids}})
		return person_objects

	def getPubs(self, pids):
		pub_objects = self.pub_col.find({'_id': {"$in": pids}})
		return pub_objects



class ModelYutao(object):
	def __init__(self):
		self.api = "https://api.aminer.cn/api"
		self.client = MongoDBClient()
		self.start_limit = 1960
		self.end_limit = 2019
		self.stop_words = ["data set", "training data", "experimental result", "single machine", "input output", "difficult learning problem", "user query", "case study", "extended abstract", "web page", "data source", "proposed algorithm", "natural language", "language processing", "discrete time", "proposed method", "real data", "international conference", "digital library", "vector machines", "proposed approach", "access control", "new approach", "large number", "particle swarm", "indexing terms", "synthetic data", "real images", "special issue", "support vector", "training set", "new method", "learning artificial intelligence", "part ii", "lecture notes", "acm conference", "extreme learning machine", "learning artificial intelligence"]
		self.ps = PorterStemmer() 

	def cleanKeyword(self, keyword):
		if '(' in keyword:
			tmp_keys = keyword.split('(')
			if len(tmp_keys) == 2:
				keyword = tmp_keys[0]
				if keyword == '':
					keyword = tmp_keys[1].replace(')', '')
		keyword = keyword.strip()
		return keyword

	def getAuthorsByQuery(self, query, size=12, offset=0):
		payload = {
			"query": query,
			"offset": offset,
		 	"size": size
		}
		path = self.api + "/search/person"
		r = requests.get(path, params=payload)
		resp = r.json()
		aids = []
		for person in resp["result"]:
			aid = ObjectId(person["id"])
			aids.append(aid)
		return aids

	def getPubsByAuthors(self, aids, num=10000):
		pids = []
		person_objects = self.client.getPersons(aids)
		for person_object in person_objects:
			if person_object is None or "pubs" not in person_object:
				continue
			for i, pub in enumerate(person_object["pubs"]):
				pid = ObjectId(pub["i"])
				pids.append(pid)
				if i > num: break

		return pids

	def getKeywordsByPubs(self, pids, n):
		pid_to_year = {}
		pid_to_keywords = {}
		keyword_to_count = {}
		stem_keyword_to_count = {}
		stem_keyword_to_full = {}

		offset = 0

		while offset < len(pids):
			end = min(len(pids), offset+5000)
			print('offset', offset, end)
			pub_objects = self.client.getPubs(pids[offset:end])
			offset = end

			for pub_object in pub_objects:
				if pub_object is None or "year" not in pub_object or pub_object["year"] < self.start_limit or pub_object["year"] > self.end_limit:
					continue
				if "keywords" not in pub_object or len(pub_object["keywords"]) == 0:
					continue

				for keyword in pub_object["keywords"]:
					keyword = self.cleanKeyword(keyword)
					stem_keyword = self.ps.stem(keyword)

					if len(keyword) == 1 or keyword in self.stop_words or ' ' not in keyword:
						continue

					if stem_keyword not in stem_keyword_to_count:
						stem_keyword_to_count[stem_keyword] = 0
					stem_keyword_to_count[stem_keyword] += 1

					if keyword not in keyword_to_count:
						keyword_to_count[keyword] = 0
					keyword_to_count[keyword] += 1

					if stem_keyword not in stem_keyword_to_full: stem_keyword_to_full[stem_keyword] = {}
					if keyword not in stem_keyword_to_full[stem_keyword]: stem_keyword_to_full[stem_keyword][keyword] = 0
					stem_keyword_to_full[stem_keyword][keyword] += 1


		sorted_map = sorted(stem_keyword_to_count.items(), key=lambda x:x[1], reverse=True)
		sort_keywords = []
		for stem_keyword, count in sorted_map[:n]:
			full_keyword = ''
			max_cnt = 0
			for keyword, num in stem_keyword_to_full[stem_keyword].items():
				if max_cnt < num:
					max_cnt = num
					full_keyword = keyword
			sort_keywords.append(full_keyword)
		return sort_keywords

	def getKeywords(self, given_term, n):
		authors = self.getAuthorsByQuery(given_term)
		for author in authors: print(author)
		authors = ['53f4557ddabfaec09f20333e',
					'53f429d2dabfaeb22f3d68eb',
					'53f63ba9dabfae9f2b1b3a95',
					'53f44ca5dabfaec09f1e1999',
					'5484eef6dabfae8a11fb24bb',
					'53f42fe3dabfaec09f13400e',
					'53f43402dabfaeecd6947e36',
					'5433e0ecdabfaeb4c6ad19b6',
					'53f4ae26dabfaee0d9c771a0',
					'53f45107dabfaee1c0b17bfa',
					'53f566aedabfae6329f80468',
					'53f556badabfaea7cd1d5eaf']
		authors = [ ObjectId(aid) for aid in authors ]
		pubs = self.getPubsByAuthors(authors)
		print(len(pubs))
		keywords = self.getKeywordsByPubs(pubs, n)
		return keywords


if __name__ == '__main__':
	model = ModelYutao()
	keywords = model.getKeywords('关键词提取', 7)
	print(keywords, len(keywords))
	# client = MongoDBClient()
	# aid = ObjectId("548a3169dabfae9b40134ff7")
	# print(client.getPerson(aid))


