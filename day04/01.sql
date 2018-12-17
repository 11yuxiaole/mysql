# 列约束
#客户端为utf8
SET NAMES UTF8;

#丢弃数据库
DROP DATABASE IF EXISTS xuezi;

#创建数据库
CREATE DATABASE xuezi CHARSET=UTF8;

#进入数据库
USE xuezi;

#创建用户表
CREATE TABLE user(
  uid INT PRIMARY KEY,
  uname VARCHAR(16) UNIQUE,
  upwd VARCHAR(32) DEFAULT '123456'
);
INSERT INTO user VALUES(1,'tom','123456');
INSERT INTO user VALUES(2,'jerry','888888');
INSERT INTO user VALUES(3,NULL,'888888');
INSERT INTO user VALUES(4,NULL,'888888');
INSERT INTO user VALUES(5,'david',DEFAULT);
INSERT INTO user(uid,uname) VALUES(6,'scott');

#创建产品分类表
CREATE TABLE laptop_family(
  fid INT PRIMARY KEY,  #分类的编号
  fname VARCHAR(16) NOT NULL     #分类的名称
);
INSERT INTO laptop_family VALUES(10,'联想');
INSERT INTO laptop_family VALUES(20,'戴尔');
INSERT INTO laptop_family VALUES(30,'APPLE');
#创建产品表
CREATE TABLE laptop(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(128),
  familyId INT,       #隶属的分类编号
  FOREIGN KEY(familyId) REFERENCES laptop_family(fid)
);
INSERT INTO laptop VALUES(5,'联想ThinkPAD',10);
INSERT INTO laptop VALUES(NULL,'APPLE air',30);
INSERT INTO laptop VALUES(NULL,'华硕500',NULL);













