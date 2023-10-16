use testdb;
drop table 학과;
create table 학과(
	학과번호 int NOT NULL,
    학과명 varchar(50),
    PRIMARY KEY(학과번호)
    );
   
    -- 학과(학과번호, 학과명)
    -- 학생 (번호, 이름, 학년,분반, 학과번호)
    CREATE TABLE 학생(
		번호   INT,
        이름   VARCHAR(12),
        학년   INT,
        분반   CHAR(2),
        학과번호 INT,
        PRIMARY KEY(번호),
        FOREIGN KEY(학과번호)
         REFERENCES 학과(학과번호)
    );
   
   
	INSERT INTO 학과 values(1,'컴퓨터소프트웨어공학과');
    INSERT INTO 학과 values(2,'컴퓨터정보공학과');
	INSERT INTO 학과 values(3,'정보통신과');
   
    INSERT INTO 학생 VALUES(1,'한지혜',1,'YB',1);
    INSERT INTO 학생 VALUES(2,'이정우',1,'YA',1);

    SELECT * FROM 학과;
	SELECT * FROM 학생;