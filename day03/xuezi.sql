# 设置客户端连接mysql服务器时的编码
SET NAMES UTF8;

# 如果存在删除数据库
DROP DATABASE IF EXISTS xuezi;

# 创建数据库student，utf-8
CREATE DATABASE xuezi CHARSET=UTF8;

# 进入数据库
USE xuezi;

# 创建保存笔记本信息的表laptop，包含编号(lid)，标题(title)，价格(price)，规格(spec)，详细介绍(details)，上架时间(shelfTime)，是否在售(isOnsale)
CREATE TABLE xz_laptop(
	lid INT PRIMARY KEY,
	title VARCHAR(100),
	price DECIMAL(7,2),
	spec VARCHAR(100),
	details VARCHAR(100),
	shelfTime DATETIME,
	isOnsale BOOL
);

# 插入5条数据
INSERT INTO xz_laptop VALUES(1,
"Apple MacBook Air 13.3英寸笔记本 银色(Core i5 处理器/8GB内存/128GB SSD闪存 MMGF2CH/A)",
6988,'双核i5/内存/256GB内存',
'5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航',
"2018-08-02 15:53:23",
FALSE);

INSERT INTO xz_laptop VALUES(2,"Apple MacBook Air 13.3英寸笔记本 银色(Core i5 处理器/8GB内存/128GB SSD闪存 MMGF2CH/A)",6988,'双核i5/内存/256GB内存','5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航',"2018-08-02 15:53:23",FALSE);

INSERT INTO xz_laptop VALUES(3,"Apple MacBook Air 13.3英寸笔记本 银色(Core i5 处理器/8GB内存/128GB SSD闪存 MMGF2CH/A)",6988,'双核i5/内存/256GB内存','5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航',"2018-08-02 15:53:23",FALSE);

INSERT INTO xz_laptop VALUES(4,"Apple MacBook Air 13.3英寸笔记本 银色(Core i5 处理器/8GB内存/128GB SSD闪存 MMGF2CH/A)",6988,'双核i5/内存/256GB内存','5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航',"2018-08-02 15:53:23",FALSE);

INSERT INTO xz_laptop VALUES(5,"Apple MacBook Air 13.3英寸笔记本 银色(Core i5 处理器/8GB内存/128GB SSD闪存 MMGF2CH/A)",6988,'双核i5/内存/256GB内存','5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航',"2018-08-02 15:53:23",FALSE);

INSERT INTO xz_laptop VALUES(6,"Apple MacBook Air 13.3英寸笔记本 银色(Core i5 处理器/8GB内存/128GB SSD闪存 MMGF2CH/A)",6988,'双核i5/内存/256GB内存','5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航',"2018-08-02 15:53:23",FALSE);

