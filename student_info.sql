create database student_info;
use student_info;
create table student_details(student_id int primary key,student_name varchar(50),gender char(6),age tinyint,course varchar(40),college varchar(60),fees decimal(10,2),is_scholarship boolean,admission_date date,result_status enum('pass','fail','distinction'));
insert into student_details values(1,'aarav sharma','male',21,'bca','mandavya college',45000.00,true,'2024-06-01','distinction');
insert into student_details values(2,'priya nair','female',20,'bcom','st josephs college',38000.00,true,'2024-06-02','pass');
insert into student_details values(3,'rohit verma','male',22,'bsc','bangalore university',42000.00,false,'2024-06-03','pass');
insert into student_details values(4,'sneha reddy','female',24,'mba','christ university',95000.00,true,'2024-06-04','distinction');
insert into student_details values(5,'karthik raja','male',21,'be','rvce bangalore',78000.00,false,'2024-06-05','fail');