create database hotel_info;
use hotel_info;
create table hotel_details(booking_id int primary key,guest_name varchar(50),gender char(6),hotel_name varchar(60),room_type varchar(30),check_in_date date,check_out_date date,room_price decimal(10,2),is_paid boolean,booking_status enum('confirmed','pending','cancelled','checked out'));
insert into hotel_details values(801,'amit verma','male','taj hotel mumbai','deluxe','2026-04-10','2026-04-14',8500.00,true,'checked out');
insert into hotel_details values(802,'kavitha iyer','female','oberoi delhi','suite','2026-04-12','2026-04-15',15000.00,true,'confirmed');
insert into hotel_details values(803,'suresh nair','male','leela palace','standard','2026-04-13','2026-04-16',5500.00,false,'pending');
insert into hotel_details values(804,'priya das','female','itc grand','deluxe','2026-04-14','2026-04-17',9000.00,true,'confirmed');
insert into hotel_details values(805,'ganesh patil','male','holiday inn','standard','2026-04-15','2026-04-18',4500.00,false,'pending');
