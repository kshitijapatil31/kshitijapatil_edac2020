create database Assignment1;
use Assignment1;
create table Member( Member_Id int(5),
Member_name varchar(30),
Member_address varchar(50),
Acc_Open_date Date,
MemberShip_type varchar(20),
Penalty_Amount int (7));
create table Books(Book_No int(6),
Book_name varchar(30),
Author_name varchar(30),
Cost int(7),
Category char(10));
create table Issue(Lib_Issue_Id int(10),
Book_No int(6),
Member_id int(5),
Issue_Date Date,
Return_Date Date);

desc Member; 
desc Books;
desc Issue;

alter table Member drop column penalty_amount;
desc Member;

insert into Member values (1,"Richa Sharma","pune","2005-12-10","Lifetime");
insert into Member values (2,"Garima sen","pune",now(),"Annual");

select *from Member;
insert into Member values(3,"Kshitija","ratnagiri","1998-01-31","Annual"),
(4,"Aarvi","ratnagiri","2018-12-08","Annual"),
(5,"nihal","ratnagiri","2001-10-28","Lifetime"),
(6,"onkar","satara","1999-01-31","Annual"),
(7,"Sharvin","ratnagiri","2010-09-04","Lifetime");

select *from Member;
insert into Books values (101,"Let us C","Denis Ritchie",450,"System"),
(102,"Oracle – Complete Ref","Loni",550,"Database"),
(103,"Mastering SQL","Loni",250,"Database"),
(104,"PL SQL-Ref","ScottUrman",750,	"Database");


select *from Member;
select *from Books;
drop table Books;

update Books set cost=300 where Book_No=103;
UPDATE Books SET Cost=300 WHERE Book_NO=103;
update Books set Cost=300;
drop table Issue;
create table Issue(Lib_Issue_Id int(10),
Book_No int(6),
Member_id int(5),
Issue_Date Date,
Return_Date Date);
insert into Issue values(7001,101,1,"10-12-06",null),
(7002,102,2,"25-12-06",null),
(7003,104,1,"15-01-06",null),
(7004,101,1,"04-07-06",null),
(7005,104,2,"15-11-06",null),
(7006,101,3,"18-02-06",null);

 