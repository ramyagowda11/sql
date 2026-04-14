create database shop_info;
use shop_info;
create table shop_details(product_id int primary key,product_name varchar(60),brand varchar(40),category char(20),price decimal(10,2),discount float,stock_quantity smallint,is_available boolean,manufacture_date date,product_status enum('new','used','refurbished','discontinued'));
insert into shop_details values(701,'iphone 15','apple','electronics',89000.00,5.0,50,true,'2023-09-15','new');
insert into shop_details values(702,'samsung tv 55','samsung','electronics',75000.00,10.0,30,true,'2023-06-20','new');
insert into shop_details values(703,'nike air max','nike','footwear',12000.00,15.0,100,true,'2024-01-10','new');
insert into shop_details values(704,'old laptop dell','dell','electronics',25000.00,20.0,10,true,'2019-05-01','refurbished');
insert into shop_details values(705,'sony headphones','sony','electronics',8000.00,8.0,75,true,'2023-11-30','new');