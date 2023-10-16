drop database if exists testdb;
create database testdb;
use testdb;


create table 학과(
학과번호 int not null,
학과명  varchar(50) ,

Primary key (학과번호) 
);

insert into 학과 values('2020','computer');
insert into 학과 values('2021','python');
insert into 학과 values('2024','java');
insert into 학과 values('77777','java');

select * from 학과;
