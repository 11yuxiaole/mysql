# 设置客户端连接mysql服务器时的编码
SET NAMES UTF8;

# 如果存在删除数据库
DROP DATABASE IF EXISTS student;

# 创建数据库student，utf-8
CREATE DATABASE student CHARSET=UTF8;

# 进入数据库
USE student;

# 创建保存笔记本信息的表laptop，包含编号(lid)，标题(title)，价格(price)，库存量(stockCount)，上架时间(shelfTime)，是否显示在首页(isIndex)
CREATE TABLE laptop(
	lid INT,
	title VARCHAR(20),
	price DECIMAL(7,2),
	stockCount INT,
	shelfTime DATETIME,
	isIndex BOOL
);


# 插入4条数据
INSERT INTO laptop VALUES(1,"戴尔",36.69,100,"2018-08-02 15:53:23",FALSE);
INSERT INTO laptop VALUES(2,"长城",456.69,100,"2018-03-23 16:53:58",TRUE);
INSERT INTO laptop VALUES(3,"联想",3999.00,100,"2018-05-05 13:53:53",FALSE);
INSERT INTO laptop VALUES(4,"华硕",4999.99,100,"2018-02-04 15:22:26",FALSE);

update laptop set stockCount = 230 where lid = 2;
