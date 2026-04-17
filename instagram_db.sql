create database instagram_db;
use instagram_db;
create table user_info(customer_id char(4) primary key,cus_name varchar(12) not null unique,email varchar(19) check (email like '%@gmail.com'),
phone_number bigint unique check (phone_number between 1000000000 and 9999999999),dob date not null unique check(dob between '2006-01-01' and '2006-12-30'),
country varchar(15) default 'india');
desc user_info;
insert into user_info values('U211','ramya','ramya@gmail.com',1234567891,'2006-01-11','india');
insert into user_info values('U212','vidya','vidya@gmail.com',1563728193,'2006-01-12','india');
insert into user_info values('U213','sanika','sanika@gmail.com',9686003998,'2006-01-13','india');
insert into user_info values('U214','shreya','shreya@gmail.com',8197850184,'2006-04-4','india');
insert into user_info values('U215','sanjana','sanjanaa@gmail.com',9113656162,'2006-01-14','india');
insert into user_info values('U216','thanu','thanu@gmail.com',8050006685,'2006-04-10','india');
insert into user_info values('U217','bhoomi','bhoomi@gmail.com',1234567892,'2006-01-7','india');
insert into user_info values('U218','impana','impana@gmail.com',1234567893,'2006-01-8','india');
insert into user_info values('U219','sowndarya','sowndarya@gmail.com',1234567894,'2006-01-3','india');
insert into user_info values('U220','moulya','moulya@gmail.com',1234567895,'2006-01-9','india');
insert into user_info values('U221','poorvika','poorvika@gmail.com',1234567896,'2006-01-17','india');
insert into user_info values('U222','navya','navya@gmail.com',1234567897,'2006-01-18','india');
insert into user_info values('U223','sowmya','sowmya@gmail.com',1234567898,'2006-01-19','india');
insert into user_info values('U224','deethi','deepti@gmail.com',1234567899,'2006-01-20','india');
insert into user_info values('U225','varshini','varshini@gmail.com',1234567890,'2006-01-21','india');
select * from user_info;

create table message_info(msg_id int primary key,user_name varchar(20) not null unique,text_msg varchar(200) not null,customer_id char(4),foreign key(customer_id) references user_info(customer_id));
insert into message_info values(11,'ramya','hai ramya','U211');
insert into message_info values(12,'sneha','hai sneha','U212');
insert into message_info values(13,'radha','hai radha','U213');
insert into message_info values(14,'ranjitha','hai ranjitha','U214');
select * from message_info;

create table post_info(post_id int primary key,post_date date not null,post_content varchar(220) not null,customer_id char(4),foreign key(customer_id) references user_info(customer_id));
insert into post_info values(1101,'2023-02-12','home tour','U211');
insert into post_info values(1102,'2023-02-13','daily vlog','U212');
insert into post_info values(1103,'2023-02-14','home tours1','U213');
insert into post_info values(1104,'2023-02-15','home tour2','U214');
insert into post_info values(1105,'2023-02-16','home tour3','U215');
insert into post_info values(1106,'2023-02-17','home tour4','U216');
insert into post_info values(1107,'2023-02-18','home tour5','U217');
insert into post_info values(1108,'2023-02-19','home tour6','U218');
insert into post_info values(1109,'2023-02-20','home tour7','U219');
insert into post_info values(1111,'2023-02-21','home tour8','U220');
insert into post_info values(1112,'2023-02-22','home tour9','U221');
insert into post_info values(1113,'2023-02-23','home tour33','U222');
insert into post_info values(1114,'2023-02-24','home tour22','U223');
select * from post_info;



create table comments_info(comment_id int primary key,comment_text varchar(150) not null,post_id int,
customer_id char(4),foreign key (post_id) references post_info(post_id),foreign key(customer_id) references user_info(customer_id));
desc comments_info;
insert into comments_info values (2,'Good post',202,'U213');
insert into comments_info values (3,'Awesome',203,'U214');
insert into comments_info values (4,'Great work',204,'U215');
insert into comments_info values (5,'Interesting', 205,'U216');
insert into comments_info values (6,'Loved it',206,'U217');

select * from comments_info;

create table followers_info (follower_id int primary key,customer_id char(4),
follower_cus_id char(4),foreign key (customer_id) references user_info(customer_id),foreign key(follower_cus_id) references user_info(customer_id));
desc followers_info;

insert into followers_info values (1, 'U211','U212');
insert into followers_info values (2, 'U213','U214');
insert into followers_info values (3, 'U215','U216');
insert into followers_info values (4, 'U217','U218');
insert into followers_info values (5, 'U219','U220');
insert into followers_info values (6, 'U221','U222');
insert into followers_info values (7, 'U223','U224');
insert into followers_info values (8, 'U225','U211');
insert into followers_info values (9, 'U212','U213');
insert into followers_info values (10,'U214','U215');
insert into followers_info values (11,'U216','U217');
insert into followers_info values (12,'U218','U219');
insert into followers_info values (13,'U220','U221');
insert into followers_info values (14,'U222','U223');
insert into followers_info values (15,'U224','U225');
select * from followers_info;

create table follow_requests (request_id int primary key,sender_id char(4),receiver_id char(4),
request_status varchar(10) default 'pending',foreign key (sender_id) references user_info(customer_id),foreign key (receiver_id) references user_info(customer_id));
desc follow_requests;

insert into follow_requests values (1,'U211','U213','pending');
insert into follow_requests values (2,'U212','U214','pending');
insert into follow_requests values (3,'U215','U217','pending');
insert into follow_requests values (4,'U216','U218','pending');
insert into follow_requests values (5,'U219','U221','pending');
insert into follow_requests values (6,'U220','U222','pending');
insert into follow_requests values (7,'U223','U225','pending');

select * from follow_requests;

create table likes_info (like_id int primary key,customer_id char(4),
    post_id int,foreign key (customer_id) references user_info(customer_id),foreign key (post_id) references post_info(post_id));

desc likes_info;

insert into likes_info values(1, 'U211',201);
insert into likes_info values (2, 'U212',202);
insert into likes_info values (3, 'U213',203);
insert into likes_info values (4, 'U214',204);
insert into likes_info values (5, 'U215',205);
insert into likes_info values (6, 'U216',206);
insert into likes_info values (7, 'U217',207);
insert into likes_info values (8, 'U218',208);
insert into likes_info values (9, 'U219',209);
insert into likes_info values (10,'U220',210);
insert into likes_info values (11,'U221',211);
insert into likes_info values(12,'U222',212);
insert into likes_info values (13,'U223',213);
insert into likes_info values (14,'U224',214);
insert into likes_info values (15,'U225',215);
select * from  likes_info;

create table reactions_info (reaction_id int primary key,reaction_type varchar(20) not null,
like_id int,foreign key (like_id) references likes_info(like_id));
desc reactions_info;

insert into reactions_info values (1,'Like',1);
insert into reactions_info values (2,'Love', 2);
insert into reactions_info values (3,'Wow',3);
insert into reactions_info values (4,'Haha',4);
insert into reactions_info values (5,'Sad',5);
select * from reactions_info;



