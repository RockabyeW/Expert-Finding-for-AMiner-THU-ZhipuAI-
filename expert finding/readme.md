* `train.py`和`test.py`训练最初版的模型
* `oagbert.py`获取paper的oagbert表示结果
* `main.py`是TransE的实现，属于早期工作现在应该不用管了
* `keywords.py`:统计词频获取关键词，构建关键词的聚类等
* `cluster.py`：尝试用谱聚类的方法进行聚类
* `divided.py`:用`keywords`中的结果进行划分

* `aminer`,`benchmark`,`data`里分别存了一些原始数据，`benchmark`里是paper的数据集，也是目前最主要使用的
* `proceeded`：存放一些处理好的数据，大部分看名字就知道是干什么的或者是什么文件生成的，其中`expert_embedding`是每个专家的paper的embedding取平均值,`expert_whole_embedding`是专家的所有paper的embedding。

