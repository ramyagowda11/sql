create database electricity_info;
use electricity_info;
create table bill_details(bill_id int primary key,customer_name varchar(50),area varchar(60),units_consumed int,rate_per_unit decimal(5,2),total_amount decimal(10,2),is_paid boolean,bill_date date,bill_status enum('paid','unpaid','pending'));
insert into bill_details values(601,'rahul kumar','bangalore',250,6.50,1625.00,true,'2026-04-01','paid');
insert into bill_details values(602,'priya sharma','mumbai',180,7.00,1260.00,false,'2026-04-05','unpaid');
insert into bill_details values(603,'arjun reddy','hyderabad',300,6.75,2025.00,false,'2026-04-08','pending');
insert into bill_details values(604,'sneha nair','chennai',150,6.20,930.00,true,'2026-04-10','paid');
insert into bill_details values(605,'vikram singh','delhi',400,7.25,2900.00,false,'2026-04-12','unpaid');