# 设置连接时的编码格式
SET NAMES UTF8;

# 假如有，则删除（丢弃）
DROP DATABASE IF EXISTS xz;

# 创建数据库xz
CREATE DATABASE xz;

# 进入该数据库
USE xz;

###################### 个人中心 ######################
# xz_user：创建用户表，记载注册后的客户信息
CREATE TABLE xz_user(
	uid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	uname VARCHAR(32),
	upwd VARCHAR(32),
	email VARCHAR(64),
	phone VARCHAR(32) NOT NULL UNIQUE,
	avatar VARCHAR(128),
	user_name VARCHAR(32),
	gender INT
);

# xz_receiver_address：用户收件地址，关联到用户表
CREATE TABLE xz_receiver_address(
	aid INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,
	receiver VARCHAR(16),
	province  VARCHAR(16),
	city VARCHAR(16),
	county VARCHAR(16),
	address  VARCHAR(128),
	cellphone  VARCHAR(16),
	fixedphone VARCHAR(16),
	postcode CHAR(6),
	tag VARCHAR(16),
	is_default BOOL,
	FOREIGN KEY(user_id) references xz_user(uid)
);
###################### 商铺中心 ###############
# xz_laptop_family：商品种类表，记载所有的商品种类
CREATE TABLE xz_laptop_family(
	fid INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(32)
);
# xz_laptop：商品表，记载所有商品的信息关联到种类表
CREATE TABLE xz_laptop(
	lid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	family_id INT,
	product_id  INT,
	title VARCHAR(128),
	subtitle VARCHAR(128),
	price DECIMAL(10,2),
	promise VARCHAR(64),
	spec VARCHAR(32),
	name VARCHAR(32),
	os VARCHAR(32),
	memory VARCHAR(32),
	resolution VARCHAR(32),
	video_card VARCHAR(32),
	cpu VARCHAR(32),
	video_memory VARCHAR(32),
	category VARCHAR(32),
	disk VARCHAR(32),
	details VARCHAR(1024),
	shelf_time BIGINT,
	sold_count INT,
	is_onsale BOOL,
	FOREIGN KEY(family_id) references xz_laptop_family(fid)
);
# xz_laptop_pic：商品详情图表，记载商品的缩放图中的素材路径关联到商品表
CREATE TABLE xz_laptop_pic(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	laptop_id INT,
	sm VARCHAR(128),
	md VARCHAR(128),
	lg VARCHAR(128),
	FOREIGN key(laptop_id) references xz_laptop(lid)
);
###################### 产品购买 ######################
# xz_shopping_cart：购物车表，记载所有用户的购物车数据关联到用户表，商品表
CREATE TABLE xz_shopping_cart(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,
	product_id INT,
	count INT,
	FOREIGN KEY(user_id) REFERENCES xz_user(uid),
	FOREIGN KEY(product_id) REFERENCES xz_laptop(lid)
);

# xz_order：订单表，记载所有用户的订单
CREATE TABLE xz_order(
	aid INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,
	address_id INT,
	status INT,
	order_time  BIGINT,
	pay_time  BIGINT,
	deliver_time  BIGINT,
	received_time  BIGINT,
	FOREIGN KEY(user_id) references xz_user(uid),
	FOREIGN KEY(address_id) references xz_receiver_address(aid)
);

# xz_order_detail：订单详细表，记载订单的详细信息关联到订单表
CREATE TABLE xz_order_detail(
	did INT PRIMARY KEY AUTO_INCREMENT,
	order_id INT,
	product_id INT,
	count INT,
	FOREIGN KEY(order_id) references xz_order(aid),
	FOREIGN KEY(product_id) references xz_laptop(lid)
);

###############################################
# xz_index_carousel：首页轮播图标，商品展示列表，关联到商品表
CREATE TABLE xz_index_carousel(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	img VARCHAR(128),
	title VARCHAR(64),
	href VARCHAR(128)
);

# xz_index_product：首页展示产品表，关联到商品表
CREATE TABLE xz_index_product(
	pid INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(64),
	details VARCHAR(128),
	pic VARCHAR(128),
	price DECIMAL(10,2),
	href VARCHAR(128),
	seq_recommended TINYINT,
	seq_new_arrival TINYINT,
	seq_top_sale TINYINT
);


