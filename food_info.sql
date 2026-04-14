create database food_info;
use food_info;
create table food_details(order_id int primary key,customer_name varchar(50),restaurant_name varchar(60),food_item varchar(40),quantity tinyint,price_per_item decimal(10,2),total_price decimal(10,2),is_delivered boolean,order_date date,order_status enum('placed','preparing','out for delivery','delivered','cancelled'));
insert into food_details values(1201,'aarav kumar','hotel darshini','masala dosa',2,80.00,160.00,true,'2026-04-10','delivered');
insert into food_details values(1202,'priya sharma','pizza hut','margherita pizza',1,350.00,350.00,true,'2026-04-11','delivered');
insert into food_details values(1203,'rohit patel','mcdonalds','mcspicy burger',3,120.00,360.00,false,'2026-04-12','out for delivery');
insert into food_details values(1204,'sneha nair','kfc','chicken bucket',1,650.00,650.00,false,'2026-04-13','preparing');
insert into food_details values(1205,'karthik das','dominos','farm house pizza',2,400.00,800.00,false,'2026-04-14','placed');