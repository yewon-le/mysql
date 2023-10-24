use DB_Trainning;

drop table login;

create table login(
	l_id	char(8)		NOT NULL,
    l_pw 	varchar(10)	NOT NULL,
		PRIMARY KEY(l_id)
        );
        
insert into login values('admin','1234');
insert into login values('guest','guest');
insert into login values('kkk','kkk');

select * from login;

update login
set l_pw='admin'
where l_id='admin';

select * from login;

delete
from login
where l_id='kkk';

select * from login;




        

