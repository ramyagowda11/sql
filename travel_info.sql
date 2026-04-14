create database travel_info;
use travel_info;
create table travel_details(travel_id int primary key,customer_name varchar(50),destination varchar(60),travel_mode varchar(40),tickets tinyint,price decimal(10,2),is_confirmed boolean,travel_date date,status enum('booked','cancelled','completed'));
insert into travel_details values(701,'rahul kumar','goa','flight',2,12000.00,true,'2026-05-01','booked');
insert into travel_details values(702,'priya sharma','mumbai','train',1,1500.00,true,'2026-04-20','completed');
insert into travel_details values(703,'arjun reddy','delhi','bus',3,3000.00,false,'2026-04-25','cancelled');
insert into travel_details values(704,'sneha nair','hyderabad','flight',1,8000.00,true,'2026-04-18','completed');
insert into travel_details values(705,'vikram singh','chennai','train',2,2200.00,false,'2026-04-22','booked');