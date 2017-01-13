CREATE database Shop_thoi_trang
use Shop_thoi_trang

drop table IF EXISTS Categories;
drop table IF EXISTS User_Staff;
drop table IF EXISTS Feedback;
drop table IF EXISTS Post;
drop table IF EXISTS Banner;
drop table IF EXISTS OrderDetails;
drop table IF EXISTS Orders;
drop table IF EXISTS Levels;
drop table IF EXISTS Employees;
drop table IF EXISTS Users;
drop table IF EXISTS Customers;
drop table IF EXISTS Supplies;
drop table IF EXISTS Parent_Categories;
drop table IF EXISTS Products;


Create table Products (
	id_product bigint NOT NULL,
	name_product Varchar(50) NOT NULL,
	price Decimal(10,0),
	slug_product Char(50),
	image Char(50),
	description Text,
	id_sup bigint NOT NULL,
	id_cate bigint NOT NULL,
	date_update Datetime NOT NULL,
	UNIQUE (id_product),
 Primary Key (id_product)) ENGINE = MyISAM;

Create table Parent_Categories (
	id_par_cate bigint NOT NULL,
	name_par_cate VARCHAR(50) NOT NULL,
	slug_par_cate Char(50),
 Primary Key (id_par_cate)) ENGINE = MyISAM;

Create table Supplies (
	id_sup bigint NOT NULL,
	name_sup Varchar(50) NOT NULL,
	address_sup Text,
	phone Char(20) NOT NULL,
	slug_sup Char(50),
 Primary Key (id_sup)) ENGINE = MyISAM;

Create table Customers (
	id_customer bigint NOT NULL,
	id_user bigint NOT NULL,
	name_customer Varchar(50) NOT NULL,
	address Text NOT NULL,
	phone Char(20) NOT NULL,
	sex Bool,
 Primary Key (id_customer)) ENGINE = MyISAM;

Create table Users (
	id_user bigint NOT NULL,
	username Char(20) NOT NULL,
	password Char(20) NOT NULL,
	email Char(50) NOT NULL,
	UNIQUE (username),
	UNIQUE (email),
 Primary Key (id_user)) ENGINE = MyISAM;

Create table Employees (
	id_employ bigint NOT NULL,
	id_level bigint NOT NULL,
	name_employ Varchar(50) NOT NULL,
	address Text NOT NULL,
	phone Char(20),
	sex Bool,
	image Char(50) NOT NULL,
	username Char(20) NOT NULL,
 Primary Key (id_employ)) ENGINE = MyISAM;

Create table Levels (
	id_level bigint NOT NULL,
	name Varchar(20) NOT NULL,
	description Char(20),
 Primary Key (id_level)) ENGINE = MyISAM;

Create table Orders (
	id_order bigint NOT NULL,
	id_customer bigint NOT NULL,
	date Datetime NOT NULL,
	status Bool NOT NULL,
	total Char(20),
 Primary Key (id_order)) ENGINE = MyISAM;

Create table OrderDetails (
	id_order bigint NOT NULL,
	id_product bigint NOT NULL,
	quatity Char(20) NOT NULL,
	unit_price Char(20),
 Primary Key (id_order,id_product)) ENGINE = MyISAM;

Create table Banner (
	id_banner bigint NOT NULL,
	name_banner Char(20),
	date Char(20),
	image Char(20) NOT NULL,
	description Char(20),
 Primary Key (id_banner)) ENGINE = MyISAM;

Create table Post (
	id_post bigint NOT NULL,
	id_employ bigint NOT NULL,
	title_post Varchar(50) NOT NULL,
	content_post Text NOT NULL,
	slug_post Char(20),
 Primary Key (id_post)) ENGINE = MyISAM;

Create table Feedback (
	id_fb bigint NOT NULL,
	title_fb Char(20),
	content_fb Char(20) NOT NULL,
	email Char(20) NOT NULL,
 Primary Key (id_fb)) ENGINE = MyISAM;

Create table User_Staff (
	username Char(20) NOT NULL,
	password Char(20) NOT NULL,
 Primary Key (username)) ENGINE = MyISAM;

Create table Categories (
	id_cate bigint NOT NULL,
	name_cate Varchar(50),
	slug_cate Char(50),
	id_par_cate bigint NOT NULL,
 Primary Key (id_cate)) ENGINE = MyISAM;


Alter table OrderDetails add Foreign Key (id_product) references Products (id_product) on delete  restrict on update  restrict;
Alter table Categories add Foreign Key (id_par_cate) references Parent_Categories (id_par_cate) on delete  restrict on update  restrict;
Alter table Products add Foreign Key (id_sup) references Supplies (id_sup) on delete  restrict on update  restrict;
Alter table Orders add Foreign Key (id_customer) references Customers (id_customer) on delete  restrict on update  restrict;
Alter table Customers add Foreign Key (id_user) references Users (id_user) on delete  restrict on update  restrict;
Alter table Post add Foreign Key (id_employ) references Employees (id_employ) on delete  restrict on update  restrict;
Alter table Employees add Foreign Key (id_level) references Levels (id_level) on delete  restrict on update  restrict;
Alter table OrderDetails add Foreign Key (id_order) references Orders (id_order) on delete  restrict on update  restrict;
Alter table Employees add Foreign Key (username) references User_Staff (username) on delete  restrict on update  restrict;
Alter table Products add Foreign Key (id_cate) references Categories (id_cate) on delete  restrict on update  restrict;

/*INSERT Parent_Categories;*/
INSERT INTO Parent_Categories (id_par_cate,name_par_cate,slug_par_cate) VALUES
(1,'Sản phẩm nữ','san-pham-nu'),
(2,'Sản phẩm nam','san-pham-nam'),
(3,'Sản phẩm trẻ em','san-pham-tre-em');
 
/*INSERT Categories;*/
INSERT INTO Categories (id_cate,name_cate,slug_cate,id_par_cate) VALUES
(1,'Áo sơmi','ao-somi-nam',1),
(2,'Áo sơmi','ao-somi-nu',2),
(3,'Áo thun','ao-thun-nam',1),
(4,'Áo thun','ao-thun-nu',2),
(5,'Áo thun','ao-thun-tre-em',3),
(6,'Áo khoác','ao-khoac-nam',1),
(7,'Áo khoác','ao-khoac-nu',2),
(8,'Quần jean','quan-jean-nam',1),
(9,'Quần jean','quan-jean-nu',2),
(10,'Quần jean','quan-jean-tre-em',3),
(11,'Quần tây','quan-tay-nam',1),
(12,'Quần short','quan-short',2),
(13,'Váy','vay',2);

/*INSERT Supplies;*/
INSERT INTO Supplies (id_sup,name_sup,address_sup,phone,slug_sup) VALUES
(1,'Hollister','','123','san-pham-hollister'),
(2,'Nike','','124','san-pham-nike'),
(3,'Addidas','','125','san-pham-addidas'),
(4,'Converse','','126','san-pham-converse'),
(5,'Lascote','','127','san-pham-lascote'),
(6,'H&M','','128','san-pham-h-m'),
(7,'Zara','','129','san-pham-zara');

/*INSERT User_Staff*/
INSERT INTO User_Staff (username,password) VALUES
('thanhnhan2605','abc123'),
('1311060126','1311060126'),
('hutech2016','khoacntt');
 
/*INSERT Levels*/
INSERT INTO Levels (id_level,name,description) VALUES
(1,'Quản lý shop','Quản lý toàn bộ hệ thống'),
(2,'Nhân viên đăng bài','Chỉ được quyền đăng bài viết'),
(3,'Nhân viên bán hàng','Phụ trách xem xét, kiểm tra, lập phiếu giao hàng');

/*INSERT EXISTS Employees;*/
INSERT INTO Employees (id_employ,id_level,name_employ,address,phone,sex,image,username) VALUES
(1,1,'Đinh Thành Nhân','','0923850210',1,'Chua-co','thanhnhan2605'),
(2,2,'1311060126','','',1,'Chua-co','1311060126');

/*INSERT Users*/
INSERT INTO Users (id_user,username,password,email) VALUES
(1,'khachhang01','khachhang01','khachhang01@gmail.com'),
(2,'khachhang02','khachhang02','khachhang02@gmail.com'),
(3,'khachhang03','khachhang03','khachhang03@gmail.com');

/*INSERT Customers*/
INSERT INTO Customers (id_customer,id_user,name_customer,address,phone,sex) VALUES
(1,1,'Khách hàng 01','TP Hồ Chí Minh','234',1),
(2,2,'Khách hàng 02','TP Đà Nẵng','432',0),
(3,3,'Khách hàng 03','Hà Nội','330',1);

/*INSERT Products;*/
INSERT INTO Products (id_product,	name_product,	price,	slug_product,	image,	description ,	id_sup,	id_cate,	date_update) VALUES
(1, 'Áo sơ mi trắng', 200000, 'so-mi-trang-01', 'somi01.jpg', 'Áo thời trang', 1, 1, '2016-11-30'),
(2, 'Áo sơ mi đen', 200000, 'so-mi-den-01', 'somi02.jpg', 'Áo thời trang', 1, 1, '2016-11-29');
/*INSERT Orders;*/

/*INSERT OrderDetails;*/


/*
drop table IF EXISTS Feedback;
drop table IF EXISTS Post;
drop table IF EXISTS Banner;


*/