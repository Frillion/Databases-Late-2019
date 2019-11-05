drop database if exists WebShop;
create database WebShop
	default character set utf8
	default collate utf8_general_ci;

use WebShop;

-- Byggt á sýnidæmi frá Norman Ur Rehman
-- https://scotch.io/tutorials/working-with-json-in-mysql
-- Opnað 03.10.2018

create table Brands
(
    ID int auto_increment,
    brand_name varchar(250) not null,
    constraint brand_PK primary key(ID)
);

CREATE TABLE Categories
(
    ID int auto_increment,
    category_name varchar(250) not null,
    constraint category_PK primary key(ID)
);

create table Products
(
    id int auto_increment,
    product_name varchar(250) not null,
    brand_id int not null,
    category_id int not null,
    attributes json  not null,
	constraint category_PK primary key(ID),
    constraint brand_id foreign key(brand_id) references Brands(ID),
    constraint category_id foreign key(category_id) references Categories(ID)
);

create index ndx_category_id  on Products(category_id);
create index ndx_brand_id  on Products(brand_id);



-- https://scotch.io/tutorials/working-with-json-in-mysql
-- http://www.mysqltutorial.org/mysql-json/
-- https://www.sitepoint.com/use-json-data-fields-mysql-databases/
-- 