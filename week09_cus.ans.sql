/* customer(cno, cname, city, point) */          
-- 고객(고객번호, 고객명, 거주지, 포인트) = 관계스키마 표기법

-- customer(cno, cname, city, point)
-- 1-1) 테이블의 '모든 열'을 검색하라

SELECT *
FROM     customer ;

-- customer(cno, cname, city, point)
-- 1-2) 테이블의 '모든 열'을 검색(필드명 사용)

SELECT cno, cname, city, point
FROM     customer ;

-- customer(cno, cname, city, point)
-- 1-3) 고객의 고객명, 거주지를 검색하라(테이블의 '특정 열'을 검색)

SELECT cname, city
FROM     customer ;

-- customer(cno, cname, city, point)
-- 1-4) cname 은 성명, city는 거주지로 출력하라(화면에 표시되는 열 이름 변경하여 검색) 

SELECT cname as 성명, city as 거주지 
FROM     customer ;

-- customer(cno, cname, city, point)
-- 1-5) customer 테이블에서 거주지를 검색하라

SELECT city
FROM     customer ;

-- customer(cno, cname, city, point)
-- 1-6) 거주지를 검색하는데 중복 행을 제거하여 한 번씩만 검색하라. * 중요함

SELECT DISTINCT city
FROM     customer ;

-- 2-1) 고객번호가 c101 인 고객의 '모든 정보'를 검색하라

SELECT *
FROM customer 
Where cno = 'c101';

-- 2-2) 포인트가 400 이하인 고객의 모든 정보를 검색하라

SELECT *
FROM customer 
Where point <= 400;

-- 2-3) 거주지가 서울 이면서 포인트가 500 이상인 고객의 이름, 거주지, 포인트를 검색하라

SELECT cname, city, point
FROM customer 
Where point >= 500;

-- 2-4) 거주지가 서울 이거나 포인트가 500 이상인 고객의 이름, 거주지, 포인트를 검색하라

SELECT cname, city, point
FROM customer 
Where ;

-- 2-5) 포인트가 350 부터 500 사이인 고객이름, 거주지, 포인트를 검색하라
-- 부등호 사용
-- /* BETWEEN … AND 사용 */

SELECT cname, city, point
FROM customer 
Where point >= 350 AND point <= 500;

/*
SELECT cname, city, point
FROM customer 
Where point >= 350 BETWEEN point <= 500;
*/

-- 2-6) 거주지가 서울 이거나 안양인 고객번호, 이름, 거주지를 검색하라 *** 중요
-- 부등호 사용
-- /* IN 사용 */

SELECT cname, city, point
FROM customer 
Where city = '서울' OR city = '안양';

/*

SELECT cname, city, point
FROM customer 
Where city  IN '서울','안양';

*/


-- 2-7) 거주지가 서울이 아니거나 안양이 아닌 고객번호, 이름, 거주지를 검색하라
-- 부등호 사용
-- /* NOT IN 사용 */
 
SELECT cno, cname, point
FROM customer
WHERE city NOT IN ('서울', '안양');

/*
SELECT cno, cname, city
FROM customer
WHERE city <> '서울' AND city <> '안양';
 */

-- 3-1) 정씨 성을 가진 고객의 모든 열을 검색하라

select *
from customer
where cname LIKE '정%';

-- 3-2) 이름에 '동' 자가 들어가는 고객의 모든 열을 검색하라

select *
from customer
where cname LIKE '%동%';

-- 3-3) 이름의 세번째 글자가 '우' 자가 들어가는 고객의 모든 열을 검색하라

select *
from customer
WHERE cname LIKE '__우';

-- 3-4) 성이 홍씨, 박씨, 정씨인 고객을 검색하라	
-- 성이 홍씨, 박씨, 정씨가 아닌 고객을 검색하라

select *
from customer
where cname NOT Like '홍%' 
AND canme NOT LIKE '박%' 
AND cname NOT LIKE '정%';

-- 3-5) 포인트가 없는 고객의 번호, 이름, 포인트를 검색하라
-- 포인트가 있는 고객의 번호, 이름, 포인트를 검색하라

SELECT cno, cname, point
FROM customer
WHERE point IS NOT NULL;

-- 4-1) 고객 테이블에서 이름을 오름차순 정렬하라	

SELECT *
FROM customer
ORDER BY canme ASC;

-- 4-2) 거주지가 서울인 고객의 모든 데이터를 검색하는데, 이름의 오름차순 정렬하여 출력하라

SELECT *
FROM customer
WHERE city = '서울'
ORDER BY canme;

-- 4-3) 거주지의 오름차순으로 정렬하고, 거주지가 같으면 포인트의 내림차순으로 정렬하라 ***

SELECT *
FROM customer
ORDER BY city ASC, point DESC;

-- 4-4) 포인트가 많은 순으로(내림차순) 먼저 정렬하고, 같은 포인트는 이름의 오름차순으로 정렬하고
-- 이름이 같으면 거주지의 오름차순으로 정렬하여 검색하라 

SELECT *
FROM customer
ORDER BY point DESC, cname ASC, city ASC;

-- 4-5) 다음의 의미는?
SELECT      cno,  cname,  city,  point  
FROM        customer  
ORDER  BY  3;

