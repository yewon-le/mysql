use week09;
SET SQL_SAFE_UPDATES = 0;

drop table 부서;

create table 부서(
	부서번호 int	NOT NULL,
    부서이름 varchar(10),
    PRIMARY KEY(부서번호)
    );
    
insert into 부서 values(1,'인사부');
insert into 부서 values(2,'연극부');
insert into 부서 values(3,'홍보부');

-- 2) 부서데이블에 데이터를 입력하라
-- 부서번호는 4, 부서이름이 영업부
Insert into 부서 values (4,'영업부');

-- 4) 부서테이블에 필드를 추가하라
-- 필드명 부서위치, 데이터 형싱 varchar(10)
alter table 부서
add 부서위치 varchar(10);

-- 6) 부서 테이블 데이터 수정하라
-- 부서번호 1인 레코드의 부서위치 필드는 서울
update 부서
set 부서위치 = '서울'
where 부서번호 = 1;

