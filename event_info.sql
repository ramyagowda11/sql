create database event_info;
use event_info;
create table event_details(event_id int primary key,event_name varchar(50),organizer_name varchar(60),location varchar(40),attendees int,budget decimal(10,2),is_completed boolean,event_date date,tatus enum('planned','ongoing','completed','cancelled'));
insert into event_details values(501,'tech fest','rahul kumar','bangalore',200,50000.00,false,'2026-05-10','planned');
insert into event_details values(502,'music concert','priya sharma','mumbai',500,150000.00,true,'2026-04-05','completed');
insert into event_details values(503,'food carnival','arjun reddy','hyderabad',300,80000.00,false,'2026-04-20','ongoing');
insert into event_details values(504,'business seminar','sneha nair','chennai',150,40000.00,true,'2026-03-25','completed');
insert into event_details values(505,'art exhibition','vikram singh','delhi',120,30000.00,false,'2026-04-18','planned');