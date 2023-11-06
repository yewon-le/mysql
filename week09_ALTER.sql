-- 부서(부서번호 pk, 부서이름)
-- 사원(사원번호 pk, 사원이름, 소속부서 fk)

drop table if exists 사원;
drop table if exists 부서;

CREATE TABLE 부서 (
    부서번호  INT            NOT NULL ,
    부서이름  VARCHAR(10)   ,
    PRIMARY KEY (부서번호)
);

CREATE TABLE 사원 (
    사원번호  INT            NOT NULL ,
    사원이름  VARCHAR(10)   , 
    소속부서  INT  , 
    PRIMARY KEY (사원번호) ,   
    FOREIGN KEY (소속부서)
        REFERENCES 부서(부서번호)
        ON UPDATE CASCADE
);


insert into 부서 values(1,'인사부');
insert into 부서 values(2,'연구부');
insert into 부서 values(3,'홍보부');

insert into 사원 values(1001,'홍길동',3);
insert into 사원 values(1002,'임꺽정',1);
insert into 사원 values(1003,'차명석',1);


select * from 부서;
select * from 사원;
 
 -- on delete cascade 문법을 쓴 후 삭제 가능 but, 홍길동의 레코드가 삭제됨.
Delete 
From 부서
Where 부서번호 = 3;

update 부서
set 부서번호 = 333
where 부서번호 = 3