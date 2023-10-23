use DB_Trainning;
SET SQL_SAFE_UPDATES=0;

DROP TABLE 사원;
DROP TABLE 부서;

CREATE TABLE 부서 (
    부서번호 int,
    부서이름 varchar(20),
    PRIMARY KEY (부서번호)
);

CREATE TABLE 사원 (
    사원번호 char(14),
    사원이름 varchar(20),
    소속부서 int,
    PRIMARY KEY (사원번호),
    FOREIGN KEY (소속부서) REFERENCES 부서(부서번호)
);

insert into 부서 values ('1','인사부');
insert into 부서 values ('2','연구부');
insert into 부서 values ('3','홍보부');

select * from 부서;

insert into 사원 values ('1001','정소화','3');
insert into 사원 values ('1002','김용욱','1');
insert into 사원 values ('1003','고명석','2');

select * from 사원;

-- 문제1)부서번호 3인 홍보부를 삭제하라
Delete 
from 부서 
where 부서번호 = 3; 

select * from 부서; 



-- 문제2) 정소화 소속부서를 2로 수정하라

update 사원
set 소속부서='2'
where 사원이름 = '정소화';

select * from 사원;

-- 고명석의 소속부서를 NULL값으로 수정하라.

update 사원
set 소속부서 = NULL
where 사원이름 = '고명석';

select * from 사원;


    