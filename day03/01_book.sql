# 设置客户端连接mysql使用的编码
SET NAMES UTF8;

# 如果存在，丢弃数据库dangdang
DROP DATABASE IF EXISTS dangdang;

# 创建数据库dangdang
# 使用UTF8作为数据库的编码
CREATE DATABASE dangdang CHARSET=UTF8;

# 进入数据库
USE dangdang;

# 创建一个保存图书的数据表book，包括 编号（bid），标题（title），作者（author），价格（price），出版时间（pubDate），是否加价购（isAddbuy）
CREATE TABLE book(
	bid INT,
	title VARCHAR(100),
	author VARCHAR(8),
	price VARCHAR(8),
	pubDate DATETIME,
	isAddbuy VARCHAR(1)
);

# 插入4条记录
INSERT INTO book VALUES(1,'javascript','zhaonan','18元','2018-09-08',1);
INSERT INTO book VALUES(2,'nodejs','xiaozhao','19.3','2018-12-08',0);
INSERT INTO book VALUES(3,'vuejs','janine','20.6','2015-11-08',0);
INSERT INTO book VALUES(4,'jquery','tom','36.23','2013-06-08',1);

# 删除编号为2的记录
DELETE FROM book WHERE bid = 2;

# 修改编号为3的记录
UPDATE book SET title = 'vue',author = 'haha' WHERE bid = 3;

# 查询所有数据
SELECT * FROM book;