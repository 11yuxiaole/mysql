# 设置连接时的编码格式
SET NAMES UTF8;

# 假如存在删除
DROP DATABASE IF EXISTS tedu;

# 创建数据库tedu，设置编码格式
CREATE DATABASE tedu CHARSET=UTF8;

# 进入该数据库
USE tedu;

# 创建保存公司部门信息的表dept，包含编号(did)，部门名称(dname)，员工数量(empCount)，10 研发部 3、20 运营部 2、30 市场部 5
CREATE TABLE dept(
	did INT,
	dname VARCHAR(8),
	empCount SMALLINT
);

# 添加数据
INSERT INTO dept VALUES(10,'研发部',3);
INSERT INTO dept VALUES(20,'运营部',2);
INSERT INTO dept VALUES(30,'市场部',5);


# 创建保存员工信息的表emp，包含编号(eid)，姓名(ename)，性别(gender)，生日(birthday)，工资(salary)，隶属部门的id(deptId)
CREATE TABLE emp(
	eid INT,
	ename VARCHAR(8),
	gender BOOL,
	birthday DATE,
	salary DECIMAL(7,2),
	deptId INT 	
);

INSERT INTO emp VALUES(1,'谢娜',1,'1989-02-07',45625,10);
INSERT INTO emp VALUES(2,'刘涛',0,'1978-02-07',45625,20);
INSERT INTO emp VALUES(3,'胡歌',1,'1987-07-17',55625,30);
INSERT INTO emp VALUES(4,'何炅',1,'1965-04-28',45895,10);

