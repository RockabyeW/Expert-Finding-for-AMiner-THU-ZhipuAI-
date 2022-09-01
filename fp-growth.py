# class treeNode:
#     def __init__(self, nameValue, numOccur, parentNode):
#         self.name = nameValue #节点名字
#         self.count = numOccur #节点计数值
#         self.nodeLink = None #用于链接相似的元素项
#         self.parent = parentNode      #needs to be updated
#         self.children = {} #子节点
#
#     def inc(self, numOccur):
#         '''
#         对count变量增加给定值
#         '''
#         self.count += numOccur
#
#     def disp(self, ind=1):
#         '''
#         将树以文本形式展示
#         '''
#         print ('  '*ind, self.name, ' ', self.count)
#         for child in self.children.values():
#             child.disp(ind+1)
#
# def createTree(dataSet, minSup=1):
#     '''
#     创建FP树
#     '''
#     headerTable = {}
#     #第一次扫描数据集
#     for trans in dataSet:#计算item出现频数
#         for item in trans:
#             headerTable[item] = headerTable.get(item, 0) + dataSet[trans]
#     headerTable = {k:v for k,v in headerTable.items() if v >= minSup}
#     freqItemSet = set(headerTable.keys())
#     #print ('freqItemSet: ',freqItemSet)
#     if len(freqItemSet) == 0: return None, None  #如果没有元素项满足要求，则退出
#     for k in headerTable:
#         headerTable[k] = [headerTable[k], None] #初始化headerTable
#     #print ('headerTable: ',headerTable)
#     #第二次扫描数据集
#     retTree = treeNode('Null Set', 1, None) #创建树
#     for tranSet, count in dataSet.items():
#         localD = {}
#         for item in tranSet:  #put transaction items in order
#             if item in freqItemSet:
#                 localD[item] = headerTable[item][0]
#         if len(localD) > 0:
#             orderedItems = [v[0] for v in sorted(localD.items(), key=lambda p: p[1], reverse=True)]
#             updateTree(orderedItems, retTree, headerTable, count)#将排序后的item集合填充的树中
#     return retTree, headerTable #返回树型结构和头指针表
#
# def updateTree(items, inTree, headerTable, count):
#     if items[0] in inTree.children:#检查第一个元素项是否作为子节点存在
#         inTree.children[items[0]].inc(count) #存在，更新计数
#     else:   #不存在，创建一个新的treeNode,将其作为一个新的子节点加入其中
#         inTree.children[items[0]] = treeNode(items[0], count, inTree)
#         if headerTable[items[0]][1] == None: #更新头指针表
#             headerTable[items[0]][1] = inTree.children[items[0]]
#         else:
#             updateHeader(headerTable[items[0]][1], inTree.children[items[0]])
#     if len(items) > 1:#不断迭代调用自身，每次调用都会删掉列表中的第一个元素
#         updateTree(items[1::], inTree.children[items[0]], headerTable, count)
#
# def updateHeader(nodeToTest, targetNode):
#     '''
#     this version does not use recursion
#     Do not use recursion to traverse a linked list!
#     更新头指针表，确保节点链接指向树中该元素项的每一个实例
#     '''
#     while (nodeToTest.nodeLink != None):
#         nodeToTest = nodeToTest.nodeLink
#     nodeToTest.nodeLink = targetNode
#
# def ascendTree(leafNode, prefixPath): #迭代上溯整棵树
#     if leafNode.parent != None:
#         prefixPath.append(leafNode.name)
#         ascendTree(leafNode.parent, prefixPath)
#
# def findPrefixPath(basePat, treeNode): #treeNode comes from header table
#     condPats = {}
#     while treeNode != None:
#         prefixPath = []
#         ascendTree(treeNode, prefixPath)
#         if len(prefixPath) > 1:
#             condPats[frozenset(prefixPath[1:])] = treeNode.count
#         treeNode = treeNode.nodeLink
#     return condPats
#
# def mineTree(inTree, headerTable, minSup, preFix, freqItemList):
#     bigL = [v[0] for v in sorted(headerTable.items(), key=lambda p: p[1][0])]# 1.排序头指针表
#     for basePat in bigL:  #从头指针表的底端开始
#         newFreqSet = preFix.copy()
#         newFreqSet.add(basePat)
#         print ('finalFrequent Item: ',newFreqSet)    #添加的频繁项列表
#         freqItemList.append(newFreqSet)
#         condPattBases = findPrefixPath(basePat, headerTable[basePat][1])
#         print ('condPattBases :',basePat, condPattBases)
#         # 2.从条件模式基创建条件FP树
#         myCondTree, myHead = createTree(condPattBases, minSup)
# #         print ('head from conditional tree: ', myHead)
#         if myHead != None: # 3.挖掘条件FP树
#             print ('conditional tree for: ',newFreqSet)
#             myCondTree.disp(1)
#             mineTree(myCondTree, myHead, minSup, newFreqSet, freqItemList)
#
# def loadSimpDat():
#     simpDat = [
#                 # ['I1','I2','I5'],
#                 # ['I2','I4'],
#                 # ['I2','I3'],
#                 # ['I1','I2','I4'],
#                 ['I2','I3','I4','I5'],
#                 # ['I2','I3'],
#                 ['I1','I3','I5','I6'],
#                 ['I1','I2','I3','I5'],
#                 ['I1', 'I2', 'I3', 'I4'],
#                 ['I1','I2','I3']
#               ]
#     return simpDat
#
# def createInitSet(dataSet):
#     retDict = {}
#     for trans in dataSet:
#         retDict[frozenset(trans)] = retDict.get(frozenset(trans), 0) + 1 #若没有相同事项，则为1；若有相同事项，则加1
#     return retDict
#
# minSup = 2
# simpDat = loadSimpDat()
# initSet = createInitSet(simpDat)
# myFPtree, myHeaderTab = createTree(initSet, minSup)
# myFPtree.disp()
# myFreqList = []
# mineTree(myFPtree, myHeaderTab, minSup, set([]), myFreqList)







# class treeNode():
#     def __init__(self, nameValue, numOccur, parentNode):
#         self.name = nameValue
#         self.count = numOccur
#         self.nodeLink = None        # 存储元素下一次的树节点内存地址（同一个元素的节点链）
#         self.parent = parentNode    # 存储元素的母节点的内存地址。（一颗树各子节点的链）
#         self.children = {}
#
#     def inc(self, numOccur):
#         self.count += numOccur
#
#     def disp(self, ind=0):
#         # 用于将树以文本的形式展示
#         # 对构件树虽不是必要的，但是对于调试非常有用
#         print('|'+'- ' * ind, self.name, ':', self.count)  # '  ' * ind用于缩进，表达树结构
#         for child in self.children.values():
#             child.disp(ind + 1)
#
#
# def createTree(dataSet, minSup=1):
#     """
#     创建FP树
#     :param dataSet: 样本数据，必须为dict型数据
#     :param minSup:  频繁项的最小频数（即：最小支持度）
#     :return: 返回创建的树、头指针表
#     """
#     # 第一次遍历所有数据集，汇总每个元素的频数，得到headerTable头指针表
#     headerTable = {}
#     for trans in dataSet:
#         for item in trans:
#             headerTable[item] = headerTable.get(item, 0) + dataSet[trans]
#
#     # 删除不满足最小支持度的项
#     # for k in headerTable.keys(): 将iteration转为list格式。
#     for k in list(headerTable.keys()):
#         if headerTable[k] < minSup:
#             del (headerTable[k])
#
#     # 得到频繁项元素集合
#     freqItemSet = set(headerTable.keys())
#     if len(freqItemSet) == 0: return None, None
#
#     # 扩展headerTable，用于将来存放元素在树上的节点位置信息
#     for k in headerTable:
#         headerTable[k] = [headerTable[k], None]
#
#     # 创建FP树的树桩
#     retTree = treeNode('Null Set', 1, None)
#
#     # 第二次开始遍历数据集，创建FP-Growth树
#     for tranSet, count in dataSet.items():
#         # 汇总单个样本数据集中的频繁项的频数
#         localD = {}
#         for item in tranSet:
#             if item in freqItemSet:
#                 localD[item] = headerTable[item][0]  # headerTable = {'元素':[count,None]...}
#         # 当样本中的频繁项不为零时：
#         if len(localD) > 0:
#             # 对样本数据的频繁项，降序排列之后，获取它们的keys（这里的v[0]，即元素名）
#             orderedItems = [v[0] for v in sorted(localD.items(), key=lambda p: p[1], reverse=True)]
#             print('单个样本频繁项降序元素集合： orderedItems = ',orderedItems)
#
#             # 将单个样本数据集的频繁项，带入retTree进行树的扩展
#             updateTree(orderedItems, retTree, headerTable, count)
#             print('*****************************')
#             retTree.disp()
#
#     return retTree, headerTable
#
#
# def updateTree(items, inTree, headerTable, count):
#     """
#     对inTree树进行扩展（inTree不一定是retTree）
#     :param items:       频繁项元素列表
#     :param inTree:      本次扩展的母节点
#     :param headerTable: 头指针表
#     :param count:       相同样本数据集的个数
#     :return:
#     """
#     # 检查样本频繁项数据集的第一项是否是inTree树的子节点
#     if items[0] in inTree.children:
#         # 如果是inTree树的子节点，则直接将样本频繁项数据集的第一项的频数，加到该子节点上
#         inTree.children[items[0]].inc(count)
#
#     # 第一个元素不是子节点时，创建新的子节点。
#     else:
#         inTree.children[items[0]] = treeNode(items[0], count, inTree)
#         # 头指针表中，第2项为空时，即该元素是第一次插入FP数，headerTable中还没有节点位置记录
#         if headerTable[items[0]][1] == None:
#             headerTable[items[0]][1] = inTree.children[items[0]]
#             # 将该元素第一次的节点位置，赋值给headerTable，在None处将该元素所在节点的内存地址存下来。
#         else:
#             # 如果headerTable已经存有地址了，则更新headerTable中的地址：
#             # headerTable[items[0]][1] ：元素前一次的在FP树上的内存地址
#             # inTree.children[items[0]]：元素本次的在FP树上的内存地址
#             updateHeader(headerTable[items[0]][1], inTree.children[items[0]])
#
#     # 一个元素处理完毕后，检查样本频繁项集中，是否还有其它元素，有，则继续迭代处理
#     if len(items) > 1:
#         # ！！！注意！！！样本集中后面的元素，是以样本集第一个元素的节点为根节点的，且前一个元素的节点是后一个元素的母节点。
#         updateTree(items[1:], inTree.children[items[0]], headerTable, count)
#
#
# def updateHeader(nodeToTest, targetNode):
#     """
#     更新headerTable，使headerTable保存的是该元素倒数第二个子节点的内存地址，
#     且该节点的nodeLink属性保存了该元素最末端的子节点的位置。
#     :param nodeToTest:元素前一次的在FP树上的内存地址（前一次的地址被存放在HeaderTable中相应元素的位置上）
#     :param targetNode:元素本次的在FP树上的内存地址
#     :return:
#     """
#     # 当headerTable中记录的上上次的元素所在的子节点已经记录了上次元素子节点的内存地址时：
#     while (nodeToTest.nodeLink != None):
#         # 将headerTable保存的地址改为该元素上一次的子节点的内存地址
#         nodeToTest = nodeToTest.nodeLink
#     # 将该元素本次（最末端）的子节点的位置，赋给headerTable保存的地址中的nodeLink属性。
#     nodeToTest.nodeLink = targetNode
#
# def loadSimpDat():
#     simpDat = [
#                #      ['r', 'z', 'h', 'j', 'p'],
#                #      ['z', 'y', 'x', 'w', 'v', 'u', 't', 's'],
#                #      ['z'],
#                # # ['z'],
#                #      ['r', 'x', 'n', 'o', 's'],
#                #      ['y', 'r', 'x', 'z', 'q', 't', 'p'],
#                #      ['y', 'z', 'x', 'e', 'q', 's', 't', 'm']
#                     ['I1','I3','I5','I6'],
#                     ['I1','I2','I3','I5'],
#                     ['I1', 'I2', 'I3', 'I4'],
#                     ['I1','I2','I3'],
#                     ['I2', 'I3', 'I4', 'I5'],
#                ]
#     return simpDat
#
#
# def createInitSet(dataSet):
#     retDict = {}
#     for trans in dataSet:
#         retDict[frozenset(trans)] = 1
#     return retDict
#
#
# simpDat = loadSimpDat()
# initSet = createInitSet(simpDat)
#
# myFPtree, myHeaderTab = createTree(initSet, 2)
# myFPtree.disp()





from numpy import *
​
def loadDataSet():return [[1, 3, 4], [2, 3, 5], [1, 2, 3, 5], [2, 5]]
​
# 获取候选1项集，dataSet为事务集。返回一个list，每个元素都是set集合
def createC1(dataSet):
    C1 = []   # 元素个数为1的项集（非频繁项集，因为还没有同最小支持度比较）for transaction in dataSet:
        for item in transaction:
            if not [item] in C1:
                C1.append([item])
    C1.sort()  # 这里排序是为了，生成新的候选集时可以直接认为两个n项候选集前面的部分相同# 因为除了候选1项集外其他的候选n项集都是以二维列表的形式存在，所以要将候选1项集的每一个元素都转化为一个单独的集合。return list(map(frozenset, C1))   #map(frozenset, C1)的语义是将C1由Python列表转换为不变集合（frozenset，Python中的数据结构）
​
​
​
​
# 找出候选集中的频繁项集
# dataSet为全部数据集，Ck为大小为k（包含k个元素）的候选项集，minSupport为设定的最小支持度
def scanD(dataSet, Ck, minSupport):
    ssCnt = {}   # 记录每个候选项的个数for tid in dataSet:
        for can in Ck:
            if can.issubset(tid):
                ssCnt[can] = ssCnt.get(can, 0) + 1   # 计算每一个项集出现的频率
    numItems = float(len(dataSet))
    retList = []
    supportData = {}
    for key in ssCnt:
        support = ssCnt[key] / numItems
        if support >= minSupport:
            retList.insert(0, key)  #将频繁项集插入返回列表的首部
        supportData[key] = support
    return retList, supportData   #retList为在Ck中找出的频繁项集（支持度大于minSupport的），supportData记录各频繁项集的支持度
​
​
# 通过频繁项集列表Lk和项集个数k生成候选项集C(k+1)。
def aprioriGen(Lk, k):
    retList = []
    lenLk = len(Lk)
    for i in range(lenLk):
        for j in range(i + 1, lenLk):
            # 前k-1项相同时，才将两个集合合并，合并后才能生成k+1项
            L1 = list(Lk[i])[:k-2]; L2 = list(Lk[j])[:k-2]   # 取出两个集合的前k-1个元素
            L1.sort(); L2.sort()
            if L1 == L2:
                retList.append(Lk[i] | Lk[j])
    return retList
​
# 获取事务集中的所有的频繁项集
# Ck表示项数为k的候选项集，最初的C1通过createC1()函数生成。Lk表示项数为k的频繁项集，supK为其支持度，Lk和supK由scanD()函数通过Ck计算而来。
def apriori(dataSet, minSupport=0.5):
    C1 = createC1(dataSet)  # 从事务集中获取候选1项集
    D = list(map(set, dataSet))  # 将事务集的每个元素转化为集合
    L1, supportData = scanD(D, C1, minSupport)  # 获取频繁1项集和对应的支持度
    L = [L1]  # L用来存储所有的频繁项集
    k = 2while (len(L[k-2]) > 0): # 一直迭代到项集数目过大而在事务集中不存在这种n项集
        Ck = aprioriGen(L[k-2], k)   # 根据频繁项集生成新的候选项集。Ck表示项数为k的候选项集
        Lk, supK = scanD(D, Ck, minSupport)  # Lk表示项数为k的频繁项集，supK为其支持度
        L.append(Lk);supportData.update(supK)  # 添加新频繁项集和他们的支持度
        k += 1return L, supportData
​
​
​
if __name__=='__main__':
    dataSet = loadDataSet()  # 获取事务集。每个元素都是列表# C1 = createC1(dataSet)  # 获取候选1项集。每个元素都是集合# D = list(map(set, dataSet))  # 转化事务集的形式，每个元素都转化为集合。# L1, suppDat = scanD(D, C1, 0.5)# print(L1,suppDat)
​
​
    L, suppData = apriori(dataSet,minSupport=0.7)
    print(L,suppData)
# FP树类
class treeNode:def __init__(self, nameValue, numOccur, parentNode):
self.name = nameValue  #节点元素名称，在构造时初始化为给定值
        self.count = numOccur   # 出现次数，在构造时初始化为给定值
        self.nodeLink = None   # 指向下一个相似节点的指针，默认为None
        self.parent = parentNode   # 指向父节点的指针，在构造时初始化为给定值
        self.children = {}  # 指向子节点的字典，以子节点的元素名称为键，指向子节点的指针为值，初始化为空字典
​
    # 增加节点的出现次数值def inc(self, numOccur):
        self.count += numOccur
​
    # 输出节点和子节点的FP树结构def disp(self, ind=1):
        print(' ' * ind, self.name, ' ', self.count)
        for child in self.children.values():
            child.disp(ind + 1)
​
​
# =======================================================构建FP树==================================================
​
​
# 对不是第一个出现的节点，更新头指针块。就是添加到相似元素链表的尾部
def updateHeader(nodeToTest, targetNode):while (nodeToTest.nodeLink != None):
        nodeToTest = nodeToTest.nodeLink
    nodeToTest.nodeLink = targetNode
​
# 根据一个排序过滤后的频繁项更新FP树
def updateTree(items, inTree, headerTable, count):if items[0] in inTree.children:
        # 有该元素项时计数值+1
        inTree.children[items[0]].inc(count)
    else:
        # 没有这个元素项时创建一个新节点
        inTree.children[items[0]] = treeNode(items[0], count, inTree)
        # 更新头指针表或前一个相似元素项节点的指针指向新节点if headerTable[items[0]][1] == None:  # 如果是第一次出现，则在头指针表中增加对该节点的指向
            headerTable[items[0]][1] = inTree.children[items[0]]
        else:
            updateHeader(headerTable[items[0]][1], inTree.children[items[0]])
​
    if len(items) > 1:
        # 对剩下的元素项迭代调用updateTree函数
        updateTree(items[1::], inTree.children[items[0]], headerTable, count)
​
​
​
# 主程序。创建FP树。dataSet为事务集，为一个字典，键为每个事物，值为该事物出现的次数。minSup为最低支持度
def createTree(dataSet, minSup=1):# 第一次遍历数据集，创建头指针表
    headerTable = {}
    for trans in dataSet:
        for item in trans:
            headerTable[item] = headerTable.get(item, 0) + dataSet[trans]
    # 移除不满足最小支持度的元素项
    keys = list(headerTable.keys()) # 因为字典要求在迭代中不能修改，所以转化为列表for k in keys:
        if headerTable[k] del(headerTable[k])
    # 空元素集，返回空
    freqItemSet = set(headerTable.keys())
    if len(freqItemSet) == 0:
        return None, None# 增加一个数据项，用于存放指向相似元素项指针for k in headerTable:
        headerTable[k] = [headerTable[k], None]  # 每个键的值，第一个为个数，第二个为下一个节点的位置
    retTree = treeNode('Null Set', 1, None) # 根节点# 第二次遍历数据集，创建FP树for tranSet, count in dataSet.items():
        localD = {} # 记录频繁1项集的全局频率，用于排序for item in tranSet:
            if item in freqItemSet:   # 只考虑频繁项
                localD[item] = headerTable[item][0] # 注意这个[0]，因为之前加过一个数据项if len(localD) > 0:
            orderedItems = [v[0] for v in sorted(localD.items(), key=lambda p: p[1], reverse=True)] # 排序
            updateTree(orderedItems, retTree, headerTable, count) # 更新FP树return retTree, headerTable
​
​
# =================================================查找元素条件模式基===============================================
​
# 直接修改prefixPath的值，将当前节点leafNode添加到prefixPath的末尾，然后递归添加其父节点。
# prefixPath就是一条从treeNode（包括treeNode）到根节点（不包括根节点）的路径
def ascendTree(leafNode, prefixPath):if leafNode.parent != None:
        prefixPath.append(leafNode.name)
        ascendTree(leafNode.parent, prefixPath)
​
# 为给定元素项生成一个条件模式基（前缀路径）。basePet表示输入的频繁项，treeNode为当前FP树中对应的第一个节点
# 函数返回值即为条件模式基condPats，用一个字典表示，键为前缀路径，值为计数值。
def findPrefixPath(basePat, treeNode):
    condPats = {}  # 存储条件模式基while treeNode != None:
        prefixPath = []  # 用于存储前缀路径
        ascendTree(treeNode, prefixPath)  # 生成前缀路径if len(prefixPath) > 1:
            condPats[frozenset(prefixPath[1:])] = treeNode.count  # 出现的数量就是当前叶子节点的数量
        treeNode = treeNode.nodeLink  # 遍历下一个相同元素return condPats
​
​
​
# =================================================递归查找频繁项集===============================================
# 根据事务集获取FP树和频繁项。
# 遍历频繁项，生成每个频繁项的条件FP树和条件FP树的频繁项
# 这样每个频繁项与他条件FP树的频繁项都构成了频繁项集
​
# inTree和headerTable是由createTree()函数生成的事务集的FP树。
# minSup表示最小支持度。
# preFix请传入一个空集合（set([])），将在函数中用于保存当前前缀。
# freqItemList请传入一个空列表（[]），将用来储存生成的频繁项集。
def mineTree(inTree, headerTable, minSup, preFix, freqItemList):# 对频繁项按出现的数量进行排序进行排序
    sorted_headerTable = sorted(headerTable.items(), key=lambda p: p[1][0])  #返回重新排序的列表。每个元素是一个元组，[（key,[num,treeNode],()）
    bigL = [v[0] for v in sorted_headerTable]  # 获取频繁项for basePat in bigL:
        newFreqSet = preFix.copy()  # 新的频繁项集
        newFreqSet.add(basePat)     # 当前前缀添加一个新元素
        freqItemList.append(newFreqSet)  # 所有的频繁项集列表
        condPattBases = findPrefixPath(basePat, headerTable[basePat][1])  # 获取条件模式基。就是basePat元素的所有前缀路径。它像一个新的事务集
        myCondTree, myHead = createTree(condPattBases, minSup)  # 创建条件FP树
​
        if myHead != None:
            # 用于测试
            print('conditional tree for:', newFreqSet)
            myCondTree.disp()
            mineTree(myCondTree, myHead, minSup, newFreqSet, freqItemList)  # 递归直到不再有元素
​
​
​
​
# 生成数据集
def loadSimpDat():
    simpDat = [['r', 'z', 'h', 'j', 'p'],
               ['z', 'y', 'x', 'w', 'v', 'u', 't', 's'],
               ['z'],
               ['r', 'x', 'n', 'o', 's'],
               ['y', 'r', 'x', 'z', 'q', 't', 'p'],
               ['y', 'z', 'x', 'e', 'q', 's', 't', 'm']]
    return simpDat
​
# 将数据集转化为目标格式
def createInitSet(dataSet):
    retDict = {}
    for trans in dataSet:
        retDict[frozenset(trans)] = 1return retDict
​
if __name__=='__main__':
    minSup =3
    simpDat = loadSimpDat()  # 加载数据集
    initSet = createInitSet(simpDat)  # 转化为符合格式的事务集
    myFPtree, myHeaderTab = createTree(initSet, minSup)  # 形成FP树# myFPtree.disp()  # 打印树
​
    freqItems = []  # 用于存储频繁项集
    mineTree(myFPtree, myHeaderTab, minSup, set([]), freqItems)  # 获取频繁项集
    print(freqItems)  # 打印频繁项集