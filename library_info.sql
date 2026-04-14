create database library_info;
use library_info;
create table library_details(book_id int primary key,book_title varchar(60),author_name varchar(50),language char(10),genre varchar(30),publish_date date,total_pages smallint,price decimal(10,2),is_available boolean,book_condition enum('new','good','fair','poor','damaged'));
insert into library_details values(1101,'wings of fire','apj abdul kalam','english','biography','1999-01-01',197,250.00,true,'good');
insert into library_details values(1102,'the alchemist','paulo coelho','english','fiction','1988-01-01',163,350.00,true,'new');
insert into library_details values(1103,'malgudi days','rk narayan','english','fiction','1943-01-01',264,200.00,false,'fair');
insert into library_details values(1104,'discovery of india','jawaharlal nehru','english','history','1946-01-01',565,400.00,true,'good');
insert into library_details values(1105,'guide','rk narayan','english','fiction','1958-01-01',220,180.00,true,'fair');