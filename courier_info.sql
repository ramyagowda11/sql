create database courier_info;
use courier_info;
create table courier_details(courier_id int primary key,sender_name varchar(50),receiver_name varchar(50),origin varchar(40),destination varchar(40),weight decimal(5,2),is_delivered boolean,dispatch_date date,delivery_status enum('dispatched','in transit','delivered','returned'));
insert into courier_details values(401,'rahul kumar','anita sharma','bangalore','hyderabad',2.50,false,'2026-04-10','in transit');
insert into courier_details values(402,'priya reddy','vikram singh','chennai','mumbai',1.20,true,'2026-04-09','delivered');
insert into courier_details values(403,'arjun patel','neha gupta','delhi','pune',3.75,false,'2026-04-11','dispatched');
insert into courier_details values(404,'sneha nair','rohit verma','kochi','bangalore',0.90,true,'2026-04-08','delivered');
insert into courier_details values(405,'karthik das','meera joshi','kolkata','chennai',4.10,false,'2026-04-12','in transit');