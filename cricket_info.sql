create database cricket_info;
use cricket_info;
create table cricket_details(player_id int primary key,player_name varchar(50),country varchar(40),age tinyint,batting_avg decimal(5,2),bowling_avg decimal(5,2),matches_played smallint,centuries tinyint,is_active boolean,player_type enum('batsman','bowler','allrounder','wicketkeeper'));
insert into cricket_details values(901,'virat kohli','india',35,58.50,0.00,274,80,true,'batsman');
insert into cricket_details values(902,'rohit sharma','india',36,48.60,0.00,243,30,true,'batsman');
insert into cricket_details values(903,'jasprit bumrah','india',30,0.00,21.50,180,0,true,'bowler');
insert into cricket_details values(904,'ben stokes','england',32,35.80,28.60,210,13,true,'allrounder');
insert into cricket_details values(905,'ms dhoni','india',42,50.57,0.00,350,16,false,'wicketkeeper');