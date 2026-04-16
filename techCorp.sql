create database TechCorp;
use TechCorp;

create table employee_info (emp_id char(5) primary key,
    emp_name varchar(30) not null unique,
    email varchar(40)  check (email like '%@techcorp.com'),
    phone_number bigint unique check (phone_number between 1000000000 and 9999999999),
    department varchar(20) not null,
    designation varchar(30) not null,
    salary decimal(10,2) check (salary>0),
    join_date date not null);
    
insert into employee_info values('E0001','Arjun Sharma','arjun@techcorp.com',9876543210,'Development','Software Engineer',75000.00,'2022-07-01'),
('E0002','Priya Nair','priya@techcorp.com',9845612340,'Testing','QA Engineer',65000.00,'2021-03-15');


create table department_info (dept_id char(4) primary key,
    dept_name varchar(30) not null unique,
    dept_head varchar(30) not null,
    location varchar(30) not null,
    team_size int check(team_size>0),
    budget decimal(12,2) check(budget>0));
    
insert into department_info values('D001','Development','Kiran Rao','Bangalore',25,5000000.00),('D002','Testing','Meena Das','Hyderabad',10,1500000.00);


create table project_info (project_id  char(5) primary key,
    project_name varchar(50) not null,
    tech_stack varchar(50) not null,
    start_date date not null,
    end_date date,
    budget decimal(12,2)check (budget > 0));

insert into project_info values('P0001','SmartBank Portal','React, Node.js, MySQL','2024-01-10','2024-06-30',1200000.00),('P0002','AutoTest Suite','Python, Selenium','2024-03-01',null,500000.00);

create table client_info (client_id char(5) primary key,
    client_name  varchar(40) not null unique,
    company_name varchar(50) not null,
    email varchar(40) check (email like '%@gmail.com'),
    phone_number bigint unique check(phone_number between 1000000000 and 9999999999),
    country varchar(30) not null);
    
insert into client_info values('C0001','Ramya gowda','infosis','ramya@gmail.com',9900112233,'USA'),('C0002','Arun kumar','microsoft','arun@gmail.com.com',9812345678,'china');


create table task_info (task_id char(6) primary key,
    task_name varchar(50) not null,
    project_id  char(5) not null,
    assigned_to  char(5) not null,
    start_date date not null,
    deadline  date not null,
    hours_spent decimal(5,2) check (hours_spent >= 0));
    
insert into task_info values('T00001','google Login form','P0001','E0001','2024-02-01','2024-02-15',40.00),
('T00002','Write Test Cases','P0001','E0002','2024-02-16','2024-03-01',20.00);

