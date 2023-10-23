-- (수업중 실습)
-- [Quiz] 사원 테이블 생성하고 데이터 입력
use week06;
set sql_safe_updates=0;
drop table 사원;

-- 사원(사원번호,사원명,연락처,생일)
CREATE TABLE 사원 (
사원번호 char(4) ,
사원명 varchar(20) ,
연락처 char(13) ,
생일 varchar(15) ,
PRIMARY KEY(사원번호)
);

insert into 사원 values('D001','정지영','',NULL);
insert into 사원 values('D002','김선주','010-1111-1111',NULL);
insert into 사원 values('D003','정성호',NULL,'10월4일');

select * from 사원;

-- (stu) (문제)
-- [Quiz] DML 실습
-- 1. 정지영 연락처를 010-9999-9999, 생일을 10월11일 로 수정하라
update 사원
set  연락처 = '010-9999-9999', 생일 = '10월 11일'
where 사원명 = '정지영';

select * from 사원;

-- 2. 김선주 생일을 10월11일로 수정하라
update 사원
set 생일 = '10월 11일'
where 사원명 = '김선주';

select * from 사원;

-- 3. 정성호 레코드를 삭제하라
delete
from 사원
where 사원명 = '정성호';

select * from 사원;