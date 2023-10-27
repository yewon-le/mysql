-- login 

use DB_Trainning;

drop table login;

-- 1.login 테이블을 생성하라.
create table login(
	l_id	char(8)		NOT NULL,
    l_pw 	varchar(10)	NOT NULL,
		PRIMARY KEY(l_id)
        );
     
-- 2.login 테이블에 데이터를 입력하라.
insert into login values('admin','1234');
insert into login values('guest','guest');
insert into login values('kkk','kkk');

select * from login;

-- 3.테이블의 아이디 admin의 암호를 admin으로 변경하라.
update login
set l_pw='admin'
where l_id='admin';

select * from login;

-- 4.login 테이블의 아이디 kk를 삭제하라.
delete
from login
where l_id='kkk';

select * from login;




        
