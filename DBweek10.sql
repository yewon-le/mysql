use week10;

/* -------- 집계함수, 그룹화 -------------------- */
drop table 성적;
drop table 성적2;

-- 집계함수
CREATE TABLE 성적(
     이름 varchar(9) NOT NULL primary key, 
     점수 int 
);

INSERT INTO 성적 ( 이름, 점수 ) VALUES ( '홍길동', 87 );
INSERT INTO 성적 ( 이름, 점수 ) VALUES ( '임꺽정', 60 );
INSERT INTO 성적 ( 이름, 점수 ) VALUES ( '박찬호', 75 );
INSERT INTO 성적 ( 이름, 점수 ) VALUES ( '선동열', 70 );
INSERT INTO 성적 ( 이름, 점수 ) VALUES ( '홍명보', 90 );
INSERT INTO 성적 ( 이름, 점수 ) VALUES ( '차범근', 75 );
INSERT INTO 성적 ( 이름, 점수 ) VALUES ( '강성범', 68 );
INSERT INTO 성적 ( 이름, 점수 ) VALUES ( '신동엽', null);

-- 그룹화
-- GROUP BY, HAVING

CREATE TABLE 성적2 (
    이름 varchar(9) NOT NULL primary key , 
    과목 varchar(8), 
    점수 int
);

INSERT INTO 성적2 VALUES ('홍길동', '영어',87 );
INSERT INTO 성적2 VALUES ('임꺽정', '수학',60 );
INSERT INTO 성적2 VALUES ('박찬호', '국어',75 );
INSERT INTO 성적2 VALUES ('선동열', '영어',70 );
INSERT INTO 성적2 VALUES ('홍명보', '수학',90 );
INSERT INTO 성적2 VALUES ('차범근', '수학',75 );
INSERT INTO 성적2 VALUES ('강성범', '수학',68 );
INSERT INTO 성적2 VALUES ('신동엽', '영어',null);

SELECT * FROM 성적;
SELECT * FROM 성적2;

/* ------------------------------------------ */

-- 성적(이름, 점수)
-- 1-1) 최고 점수를 검색하라
SELECT MAX(점수)
FROM 성적;

-- 1-2) 최저 점수를 검색하라
SELECT MIN
FROM 성적;

-- 1-3) 점수합계를 검색하라 
SELECT SUM
FROM 성적;

-- 1-4) 평균점수를 검색하라
SELECT AVG
FROM 성적;

-- 1-5) 학생수는 모두 몇 명인지 검색하라 *
SELECT COUNT(*)
FROM 성적;

-- 1-6) 시험에 응시한 학생수는 모두 몇 명인지 검색하라 *
SELECT COUNT(점수) as "응시학생수"
FROM 성적;

-- 성적2(이름, 과목, 점수)
-- 2-1) 각 과목수는 몇 개인지 검색하라(DISTINCT 사용) 
SELECT COUNT(DISTINCT 과목) as 과목수
FROM 성적2

-- 2-2) 과목별 수강생은 몇명인지 검색하라(GROUP BY) ***
SELECT 과목, COUNT(*)
FROM 성적2
GROUP BY 과목;

-- 2-3) 과목별 평균점수를 검색하라(GROUP BY)
SELECT 과목, AVG(점수)
FROM 성적2
GROUP BY 과목;

-- 2-4) 과목별 평균점수 75 보다 높은 과목의 과목별 평균점수를 검색하라(HAVING)
SELECT 과목, AVG(점수)
FROM 성적2
GROUP BY 과목
HAVING AVG(점수) >= 75;

-- ROUND() 함수 //반올림
select 과목, ROUND(AVG(점수),2) 
from 성적2
group by 과목;

-- 2-5) 점수가 70 이상인 과목이름, 과목 평균점수를 과목의 과목별 평균점수가 75 이상인 것만
-- 과목별 평균점수가 높은 순으로 검색하라(ORDER  BY)
SELECT 과목, AVG(점수)
FROM 성적2
GROUP BY 과목
HAVING AVG(점수) >= 75
ORDER BY AVG(점수) ASC;