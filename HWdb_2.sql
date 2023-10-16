use HWdb_2;

create table 사원(
	사원번호 char(4) NOT NULL,
    사원이름 varchar(10),
    나이 int,
    주소 varchar(20),
    직급 char(4),
    primary key (사원번호)
);

insert into 사원 values('E001','홍준화','30','서울시 마포구','대리');
insert into 사원 values('E002','김연주','28','서울시 영등포구','사원');
insert into 사원 values('E003','이명기','32','서울시 강남구','사원');
insert into 사원 values('E004','이예원','20','서울시 양천구','차장');

select * from 사원;

