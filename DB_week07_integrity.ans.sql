-- [실습 1-02] DDL (무결성 제약조건 있는 경우)
use week07;
-- [실습] 무결성 제약조건

-- 신입생(학번,주민,이름, 학년, 주소,학과명)

-- 1) 제약조건 없는 경우
drop table 신입생;

CREATE TABLE 신입생(
     학번              char(8) , 
     주민등록번호        char(14) 	unique  ,
     이름              varchar(20)     ,
     학년              int        default  1    ,
     성별              char(1)    check (성별 IN ('남','여'))   ,
     주소              varchar(20) ,
     학과명             varchar(20) ,
     PRIMARY KEY(학번) 
);

-- 테이블 구조 확인
DESC 신입생;