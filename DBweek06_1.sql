use week06;

SET SQL_SAFE_UPDATES =0;
drop table 주소록;

create table 주소록(
	번호 int AUTO_INCREMENT,
    이름 char(10) NOT NULL,
    전화번호 char(13),
    주소 varchar(10),
    생일 varchar(11),
    PRIMARY KEY(번호)
);

insert into 주소록 (이름, 전화번호, 주소, 생일)
values ('홍길동','010-1234-5678','서울','3월 15일');
insert into 주소록 (이름, 전화번호, 주소, 생일)
values ('이몽룡','010-3354-5643','부산','12월 14일');
insert into 주소록 (이름, 전화번호, 주소, 생일)
values ('최용만','321-2345','대전','5월 8일');
insert into 주소록 (이름, 전화번호, 주소, 생일)
values ('이건우','010-2134-2345',null,null);
insert into 주소록 (이름, 전화번호)
values ('유정두','010-9999-9999');

select * from 주소록;

-- 홍길동의 전화번호를 수정하여라
update 주소록
set  전화번호 = '010-3245-4368'
where 이름 = '홍길동';

select * from 주소록;

-- 이건우의 주소는 '서울', 생일은 '8월 23일'로 수정하여라
update 주소록
set 주소 = '서울',생일 = '8월 23일'
where 이름 = '이건우';

select * from 주소록;

-- 최용만의 레코드를 삭제하여라
delete
from 주소록
where 이름 = '최용만';

select * from 주소록;

-- 이몽룡의 데이터를 조회하여라
select  * from 주소록
where 이름 = '이몽룡';







    
    


