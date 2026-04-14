create database course_info;
use course_info;
create table course_details(course_id int primary key,course_name varchar(50),platform_name varchar(60),category varchar(40),duration int,price decimal(10,2),is_enrolled boolean,start_date date,course_status enum('ongoing','completed','not started'));
insert into course_details values(901,'java full stack','udemy','programming',6,4999.00,true,'2026-04-01','ongoing');
insert into course_details values(902,'python for data science','coursera','data science',4,3999.00,true,'2026-03-20','completed');
insert into course_details values(903,'web development','edureka','programming',5,2999.00,false,'2026-04-10','not started');
insert into course_details values(904,'machine learning','udacity','ai/ml',8,9999.00,true,'2026-02-15','ongoing');
insert into course_details values(905,'c programming basics','simplilearn','programming',3,1999.00,false,'2026-01-10','completed');