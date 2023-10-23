use DB_Trainning;
-- 고객 테이블은 고객아이디, 고객이름, 나이, 등급, 직업, 적립금 속성으로
-- 구성되고, 고객아이디 속성이 기본키다.
-- 고객이름과 등급 속성은 값을 반드시 입력해야 하고,
-- 적립금 속성은 값을 입력하지 않으면 0이 기본으로 입력되도록 한다
-- 직업 속성 값의 범위는 학생, 교사, 회사원 을 입력한다

create table 고객(
	고객아이디 	varchar(9),
    고객이름 	varchar(20)		NOT NULL,
    나이 	int,
    등급 	varchar(10)		NOT NULL,
    직업 	ENUM('학생', '교사', '회사원'),
    적립금 	int default 0,
		PRIMARY KEY(고객아이디)
    );
    


