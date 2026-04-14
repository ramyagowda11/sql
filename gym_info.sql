create database gym_info;
use gym_info;
create table member_details(member_id int primary key,member_name varchar(50),gym_name varchar(60),plan varchar(40),duration tinyint,fees decimal(10,2),is_active boolean,join_date date,membership_status enum('active','expired','cancelled'));
insert into member_details values(801,'rahul kumar','power gym','monthly',1,1200.00,true,'2026-04-01','active');
insert into member_details values(802,'priya sharma','fit zone','quarterly',3,3000.00,true,'2026-03-15','active');
insert into member_details values(803,'arjun reddy','iron paradise','yearly',12,10000.00,false,'2025-04-10','expired');
insert into member_details values(804,'sneha nair','muscle factory','monthly',1,1500.00,true,'2026-04-05','active');
insert into member_details values(805,'vikram singh','strong life gym','quarterly',3,2800.00,false,'2026-02-20','cancelled');