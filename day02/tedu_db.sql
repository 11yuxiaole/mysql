# 删除（丢弃）数据库tedu，如果数据库存在
DROP DATABASE IF EXISTS tedu;

# 创建数据库tedu
CREATE DATABASE tedu;
# CREATE DATABASE IF NOT EXISTS tedu;

# 进入数据库tedu
USE tedu;

# 创建数据表
# 学生表：编号，姓名，性别，成绩
CREATE TABLE student(
	sid INT,		# integer
	name VARCHAR(8),	# variable charator
	gender VARCHAR(1),	# M/F
	score INT
);

# 向数据表中插入数据
INSERT INTO student VALUES(001,'zhaonan','F',100);

# 查询表中所有的数据
SELECT * FROM student;




