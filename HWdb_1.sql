use HWdb;

drop table 환자;
drop table 의사;

create table 의사 (
	의사번호	char(4)		NOT NULL,
    의사이름	varchar(10),
    소속		varchar(4),
    근무연수	int,
    primary key (의사번호)
);

create table 환자 (
	환자번호	char(4)		NOT NULL,
    환자이름	varchar(10),
    나이		int,
    담당의사	char(4),
    primary key (환자번호),
    foreign key (담당의사)
			references 의사(의사번호)
	);
    
insert into 의사 values('D001','정지영','내과','5');
insert into 의사 values('D002','김선주','피부과','10');
insert into 의사 values('D003','정성호','정형외과','15');
insert into 의사 values('D004','김우주','신경과','7');

insert into 환자 values('P001','오우진','31','D002');
insert into 환자 values('P002','채광주','50','D001');
insert into 환자 values('P003','김용욱','43','D003');
insert into 환자 values('P004','김지은','28','D001');


select * from 의사;
select * from 환자;
