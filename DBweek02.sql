create database testdb;
use testdb;

create table 학과(
학과번호 int not null,
학과명 varchar(50),

primary key(학과번호)
);
insert into 학과 values('1','컴퓨터소프트웨어공학과');
insert into 학과 values('2','컴퓨터정보공학과');
insert into 학과 values('3','정보통신공학과');

