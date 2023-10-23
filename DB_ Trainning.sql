-- 테이블 생성(기본키,외래키)
use DB_Trainning;

create table 학과(
	학과번호 int 		NOT NULL,
    학과명 varchar(50),
    PRIMARY KEY (학과번호)
);
    
create table 학생(
	번호 int 		NOT NULL,
    이름 varchar(12),
    학년 int,
    분반 char(2),
    학과번호 int,
    PRIMARY KEY (번호),
    FOREIGN KEY (학과번호)
		REFERENCES 학과(학과번호)
);

insert into 학과 values ('1','컴퓨터소프트웨어공학과');
insert into 학과 values ('2','컴퓨터정보공학과');
insert into 학과 values ('3','정보통신과');

select * from 학과;

insert into 학생 values ('1','한지혜','1','YB','1');
insert into 학생 values ('2','이정우','1','YA','1');
insert into 학생 values ('3','오지영','2','J1','2');
insert into 학생 values ('4','강재미','1','YB','1');
insert into 학생 values ('5','박철호','2','J1','2');
    
select * from 학생;