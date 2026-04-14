create database flight_info;
use flight_info;
create table flight_details(flight_no int primary key,flight_name varchar(40),airline_code char(6),route_description longtext,departure_time time,airport_name varchar(60),distance_km decimal(10,2),total_crew tinyint,seat_capacity smallint,total_passengers bigint,ticket_price float,is_international boolean,flight_date date,last_updated datetime,special_notes text,gate_number mediumint);
insert into flight_details values(10011,'indigo sunrise','IN-101','delhi to mumbai morning shuttle','6:00','indira gandi international',1148.50,8,180,52000000,3500.00,false,'2026-04-14','2026-04-14 05:00:00','most popular domestic route',101);
insert into flight_details values(10012,'air india royal','IN-102','mumbai to landan non-stop','7:00','chhatrapati shivaji international',7190.80,14,320,98000000,42000.00,true,'2026-04-14','2025-04-14 20:00:00','flagship international route',202);
insert into flight_details values(10033,'spicejet express','SG-303','chennai to kolkata express','9:30','chennai international',1670.30,6,150,38000000,2800.75,false,'2026-04-15','2026-04-14 08:00:00','budget carrier special',303);
insert into flight_details values(10044,'vistara pearl','UK-404','bangalore to singapore direct','1:45','kempegowda international',3440.60,10,210,67000000,18500.50,true,'2026-04-15','2025-04-14 00:30:00','award winning service',404);
