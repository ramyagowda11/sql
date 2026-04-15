create database company_db;
use company_db;
create table employee_details (
id int,
emp_name varchar(50),
department varchar(50));
desc employee_details;

insert into employee_details values
(1,'Ravi','HR'),
(2,'Anjali','IT'),
(3,'Kiran','Finance'),
(4,'Sneha','Marketing'),
(5,'Arjun','Sales'),
(6,'Pooja','IT'),
(7,'Rahul','HR'),
(8,'Meena','Finance'),
(9,'Vikram','Sales'),
(10,'Divya','Marketing');

select * from employee_details;
alter table employee_details 
add joining_year int,
add salary decimal(10,2),
add rating int;

alter table employee_details drop department;
alter table employee_details rename column joining_year to join_year,rename column rating to performance_rating;
alter table employee_details modify column emp_name varchar(60),modify column salary decimal(12,2);

UPDATE employee_details SET join_year=2020, salary=50000, performance_rating=4 WHERE id=1;
UPDATE employee_details SET join_year=2019, salary=60000, performance_rating=5 WHERE id=2;
UPDATE employee_details SET join_year=2018, salary=45000, performance_rating=3 WHERE id=3;
UPDATE employee_details SET join_year=2021, salary=55000, performance_rating=4 WHERE id=4;
UPDATE employee_details SET join_year=2022, salary=40000, performance_rating=2 WHERE id=5;
UPDATE employee_details SET join_year=2020, salary=65000, performance_rating=5 WHERE id=6;
UPDATE employee_details SET join_year=2017, salary=48000, performance_rating=3 WHERE id=7;
UPDATE employee_details SET join_year=2016, salary=70000, performance_rating=5 WHERE id=8;
UPDATE employee_details SET join_year=2019, salary=52000, performance_rating=4 WHERE id=9;
UPDATE employee_details SET join_year=2021, salary=58000, performance_rating=4 WHERE id=10;
alter table employee_details drop performance_rating;


create table google_info (
    id int,
    name varchar(30),
    salary int);
    desc google_info;

insert into google_info values (1,'a',50000), (2,'b',60000),(3,'c',55000),(4,'d',70000),(5,'e',65000),(6,'f',52000),(7,'g',58000),(8,'h',62000),(9,'i',71000),(10,'j',48000),(11,'k',53000),(12,'l',66000),(13,'m',72000),(14,'n',69000),(15,'o',75000);

desc google_info;

alter table google_info add age int;
alter table google_info add dept varchar(20);
alter table google_info add city varchar(20);

alter table google_info rename column name to emp_name;
alter table google_info rename column salary to income;


alter table google_info modify age bigint;
alter table google_info modify dept char(20);

update google_info set emp_name='arun', income=80000 where id=1;
update google_info set emp_name='baskar', income=82000 where id=2;
update google_info set emp_name='komal', income=83000 where id=3;
update google_info set emp_name='darshan', income=84000 where id=4;
update google_info set emp_name='hitisha', income=85000 where id=5;

delete from google_info where id=10;

desc google_info;
select * from google_info;




create table amazon_info (
    id int,
    name varchar(30),
    salary int);

insert into amazon_info values (1,'p',40000),(2,'q',45000), (3,'r',50000), (4,'s',55000), (5,'t',60000), (6,'u',65000), (7,'v',70000), (8,'w',75000), (9,'x',80000),(10,'y',85000),(11,'z',90000),(12,'aa',95000),(13,'bb',100000),(14,'cc',105000),(15,'dd',110000);

desc amazon_info;

alter table amazon_info add age int,add department varchar(20), add city varchar(20);

alter table amazon_info rename column name to emp_name, rename column salary to income, rename column city to location;

alter table amazon_info modify age bigint, modify department char(20);

update amazon_info set emp_name='pp', income=120000 where id=1;
update amazon_info set emp_name='qq', income=125000 where id=2;
update amazon_info set emp_name='rr', income=130000 where id=3;
update amazon_info set emp_name='ss', income=135000 where id=4;
update amazon_info set emp_name='tt', income=140000 where id=5;

delete from amazon_info where id=10;
select * from amazon_info;






create table microsoft_info (
    id int,
    name varchar(30),
    salary int);

insert into microsoft_info values (1,'a1',30000),(2,'b1',35000),(3,'c1',37000),(4,'d1',39000),(5,'e1',41000),(6,'f1',43000),(7,'g1',45000),(8,'h1',47000),(9,'i1',49000),(10,'j1',51000),(11,'k1',53000), (12,'l1',55000),(13,'m1',57000), (14,'n1',59000),(15,'o1',61000);

desc microsoft_info;

alter table microsoft_info add age int,add dept varchar(20), add city varchar(20);

alter table microsoft_info rename column name to emp_name;
alter table microsoft_info rename column salary to income;
alter table microsoft_info rename column city to location;

alter table microsoft_info modify age bigint;
alter table microsoft_info modify dept char(20);

update microsoft_info set emp_name='aa1', income=70000 where id=1;
update microsoft_info set emp_name='bb1', income=72000 where id=2;
update microsoft_info set emp_name='cc1', income=74000 where id=3;
update microsoft_info set emp_name='dd1', income=76000 where id=4;
update microsoft_info set emp_name='ee1', income=78000 where id=5;

delete from microsoft_info where id=12;

desc microsoft_info;



create table infosys_info (
    id int,
    name varchar(30),
    salary int
);

insert into infosys_info values (1,'a',25000);
insert into infosys_info values (2,'b',27000);
insert into infosys_info values (3,'c',29000);
insert into infosys_info values (4,'d',31000);
insert into infosys_info values (5,'e',33000);
insert into infosys_info values (6,'f',35000);
insert into infosys_info values (7,'g',37000);
insert into infosys_info values (8,'h',39000);
insert into infosys_info values (9,'i',41000);
insert into infosys_info values (10,'j',43000);
insert into infosys_info values (11,'k',45000);
insert into infosys_info values (12,'l',47000);
insert into infosys_info values (13,'m',49000);
insert into infosys_info values (14,'n',51000);
insert into infosys_info values (15,'o',53000);

desc infosys_info;

alter table infosys_info add age int;
alter table infosys_info add dept varchar(20);
alter table infosys_info add city varchar(20);

alter table infosys_info rename column name to emp_name;
alter table infosys_info rename column salary to income;
alter table infosys_info rename column city to location;

alter table infosys_info modify age bigint;
alter table infosys_info modify dept char(20);

update infosys_info set emp_name='aa', income=60000 where id=1;
update infosys_info set emp_name='bb', income=62000 where id=2;
update infosys_info set emp_name='cc', income=64000 where id=3;
update infosys_info set emp_name='dd', income=66000 where id=4;
update infosys_info set emp_name='ee', income=68000 where id=5;

delete from infosys_info where id=8;

desc infosys_info;
select * from infosys_info;


create table tcs_info (
    id int,
    name varchar(30),
    salary int);

insert into tcs_info values (1,'x1',20000);
insert into tcs_info values (2,'y1',22000);
insert into tcs_info values (3,'z1',24000);
insert into tcs_info values (4,'a2',26000);
insert into tcs_info values (5,'b2',28000);
insert into tcs_info values (6,'c2',30000);
insert into tcs_info values (7,'d2',32000);
insert into tcs_info values (8,'e2',34000);
insert into tcs_info values (9,'f2',36000);
insert into tcs_info values (10,'g2',38000);
insert into tcs_info values (11,'h2',40000);
insert into tcs_info values (12,'i2',42000);
insert into tcs_info values (13,'j2',44000);
insert into tcs_info values (14,'k2',46000);
insert into tcs_info values (15,'l2',48000);

desc tcs_info;

alter table tcs_info add age int;
alter table tcs_info add department varchar(20);
alter table tcs_info add city varchar(20);

alter table tcs_info rename column name to emp_name;
alter table tcs_info rename column salary to income;
alter table tcs_info rename column city to location;

alter table tcs_info modify age bigint;
alter table tcs_info modify department char(20);

update tcs_info set emp_name='xx', income=50000 where id=1;
update tcs_info set emp_name='yy', income=52000 where id=2;
update tcs_info set emp_name='zz', income=54000 where id=3;
update tcs_info set emp_name='aa', income=56000 where id=4;
update tcs_info set emp_name='bb', income=58000 where id=5;

delete from tcs_info where id=5;

desc tcs_info;
select * from tcs_info;