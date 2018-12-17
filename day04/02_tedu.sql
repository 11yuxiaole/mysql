# 设置连接时的编码
SET NAMES UTF8;

DROP DATABASE IF EXISTS tedu; 

# 创建数据库tedu，使用UTF8
CREATE DATABASE tedu CHARSET=UTF8;

# 进入数据库
USE tedu

# 创建部门表dept，包括编号(did)，名称(dname);
CREATE TABLE dept(
	did INT PRIMARY KEY,
	dname VARCHAR(8)
);

# 插入数据：10 研发部 20 运营部 30 市场部 40 测试部
INSERT INTO dept VALUES(10,'研发部');
INSERT INTO dept VALUES(20,'运营部');
INSERT INTO dept VALUES(30,'市场部');
INSERT INTO dept VALUES(40,'测试部');

# 创建员工表empt，包括编号(eid)，姓名(ename)，性别(gender)，生日(birthday)，工资(salary)，隶属的部门编号(deptId)
CREATE TABLE empt(
	eid INT PRIMARY KEY AUTO_INCREMENT,
	ename VARCHAR(8),
	gender BOOL,	# 1为男，0为女
	birthday DATE,
	salary DECIMAL(7,2), # 99999.99
	deptId INT,	# 外键
	FOREIGN KEY(deptId) REFERENCES dept(did)

);

# 插入14行纪录，分别隶属部门10,20,30，其中14号员工不在任何部门(NULL)
INSERT INTO empt VALUES(NULL,"janine00",1,"2018-02-03",8000,10);
INSERT INTO empt VALUES(NULL,"janine01",1,"2018-02-03",8000,20);
INSERT INTO empt VALUES(NULL,"janine02",1,"2018-02-03",8000,30);

