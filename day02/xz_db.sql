# 删除数据库xz，如果存在的话
DROP DATABASE IF EXISTS xz;

# 创建数据库xz
CREATE DATABASE xz;

# 进入该数据库
USE xz;

# 创建数据表user
# 包含列 uid，uname，upwd，email，phone，gender，userName(真实姓名)，regTime(注册时间 2018-10-01)、isOnline(是否在线 1-> 是  0-> 否)
CREATE TABLE user(
	uid INT,
	uname VARCHAR(12),
	upwd VARCHAR(20),
	email VARCHAR(20),
	phone VARCHAR(11),
	gender VARCHAR(1),
	userName VARCHAR(8),
	regTime DATETIME,
	isOnline BOOL
);

# 插入5行记录，删除第二行记录，查询最后的结果
INSERT INTO user VALUES(1,'TREY','FGHDH',
	'11708@qq.com',
	'15278906789',
	'F',
	'zhangsan',
	'2018-07-08',
	'1');

INSERT INTO user VALUES(2,'GHNJK','XBCVB',
	'11708@qq.com',
	'15278906789',
	'F',
	'zhangsan',
	'2018-08-07',
	'0');
INSERT INTO user VALUES(3,'VNBV','GJHJHG',
	'11708@qq.com',
	'15278906789',
	'F',
	'zhangsan',
	'2018-09-02',
	'1');
INSERT INTO user VALUES(4,'FGSD','JHGK',
	'11708@qq.com',
	'15278906789',
	'F',
	'zhangsan',
	'2018-10-08',
	'2');

# 删除编号为2的数据
DELETE FROM user WHERE uid = 2;

# 修改编号为3的数据
UPDATE user SET upwd = '123456' WHERE upwd = 'GJHJHG';

# 查询数据
SELECT * FROM user; 

