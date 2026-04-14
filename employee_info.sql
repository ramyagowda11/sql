create database employee_info;
use employee_info;
create table employee_details(emp_id int primary key,emp_name varchar(50),gender char(6),age tinyint,department varchar(40),company varchar(60),salary decimal(10,2),is_permanent boolean,join_date date,emp_status enum('active','inactive','resigned','retired'));
insert into employee_details values(101,'rahul mehta','male',30,'it','tata consultancy',75000.00,true,'2020-01-10','active');
insert into employee_details values(102,'pooja sharma','female',28,'hr','infosys bangalore',55000.00,true,'2021-03-15','active');
insert into employee_details values(103,'arun kumar','male',45,'finance','wipro ltd',90000.00,true,'2010-07-20','active');
insert into employee_details values(104,'divya nair','female',35,'marketing','hcl technologies',62000.00,false,'2019-09-01','inactive');
insert into employee_details values(105,'suresh babu','male',52,'admin','tech mahindra',48000.00,true,'2005-11-25','retired');
select * from employee_details;
