# ɾ�������������ݿ�tedu��������ݿ����
DROP DATABASE IF EXISTS tedu;

# �������ݿ�tedu
CREATE DATABASE tedu;
# CREATE DATABASE IF NOT EXISTS tedu;

# �������ݿ�tedu
USE tedu;

# �������ݱ�
# ѧ������ţ��������Ա𣬳ɼ�
CREATE TABLE student(
	sid INT,		# integer
	name VARCHAR(8),	# variable charator
	gender VARCHAR(1),	# M/F
	score INT
);

# �����ݱ��в�������
INSERT INTO student VALUES(001,'zhaonan','F',100);

# ��ѯ�������е�����
SELECT * FROM student;




