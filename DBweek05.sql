use week05;


drop table dmember;
drop table dept;

create table dept (
	dept_id char(3)  not null, 
    name	varchar(20),
    primary key(dept_id)
    
    );


create table dmember (
	name	varchar(10)	NOT NULL,
	dept_id char(3),
	primary key(name),
	constraint fk_dmember_dept 
		foreign key (dept_id)
			references dept(dept_id)
	);

insert into dept values('100','컴퓨터공학과');
insert into dept values('101','산업공학과');

insert into dmember values('김광식','100');
insert into dmember values('김현정','101');
insert into dmember values('조영수','101');
insert into dmember values('이예원','100');

select * from dept;
select * from dmember;

