USE pokemon;

SELECT *
FROM mypokemon;

UPDATE mypokemon
SET type = CASE number
			WHEN 125 THEN "electric"
			WHEN 137 THEN "normal"
			WHEN 153 THEN "grass"
			WHEN 172 THEN "electric"
			WHEN 470 THEN "grass"
           END
WHERE number in (125, 137, 153, 172, 470);

# groupby 사용 예제
SELECT type, count(name)
FROM mypokemon
GROUP BY type;

# 그룹함수 사용예제 (1)
# SELECT 절에서 사용
SELECT type,
		COUNT(*),
        COUNT(1),
        AVG(height),
        MAX(weight)
FROM mypokemon
GROUP BY type;

# 그룹함수 사용예제 (2)
# HAVING 절에서 사용
SELECT type,
		COUNT(*),
        COUNT(1),
        AVG(height),
        MAX(weight)
FROM mypokemon
GROUP BY type
-- 그룹의 조건 설정
HAVING COUNT(1) = 2;


# 쿼리 실행 순서
-- 5th
SELECT type,
		COUNT(1),
        MAX(weight)
-- 1st
FROM mypokemon
-- 2nd
WHERE name LIKE "%a%"
-- 3rd
GROUP BY type
-- 4th
HAVING MAX(height) > 1
-- 6th
ORDER BY 3;


SELECT *
FROM mypokemon;

# COUNT(*), COUNT(1), COUNT(컬럼명)
# COUNT(*)과 COUNT(1) : NULL값 포함해서 개수 세어줌
# COUNT(컬럼명) : NULL값 포함하지 않고 개수 세어줌
SELECT COUNT(*), COUNT(1), COUNT(attack)
FROM mypokemon;

### 수업 ###
-- 기존 DB 삭제 : DROP (DDL) 이용
-- CRUD의 DELETE (DML) 
DROP DATABASE IF EXISTS pokemon;

-- 새로운 DB 생성
-- CRUD의 CREATE 해당
CREATE DATABASE pokemon;

-- pokemon 데이터베이스 사용
USE pokemon;

-- 새로운 TABLE 생성
CREATE TABLE mypokemon (number INT,
						name VARCHAR(20),
                        type VARCHAR(20),
                        height FLOAT,
                        weight FLOAT
                        );

 -- 데이터 삽입
INSERT INTO mypokemon (number, name, type, height, weight)
VALUES (10, "caterpie", "bug", 0.3, 2.9),
	   (25, 'pikachu', 'electric', 0.4, 6),
	   (26, 'raichu', 'electric', 0.8, 30),
	   (125, 'electabuzz', 'electric', 1.1, 30),
	   (133, 'eevee', 'normal', 0.3, 6.5),
	   (137, 'porygon', 'normal', 0.8, 36.5),
	   (152, 'chikoirita', 'grass', 0.9, 6.4),
	   (153, 'bayleef', 'grass', 1.2, 15.8),
	   (172, 'pichu', 'electric', 0.3, 2),
	   (470, 'leafeon', 'grass', 1, 25.5);
       
-- 데이터 조회
SELECT *
FROM mypokemon;

-- type만 조회
SELECT type
FROM mypokemon;

-- type별로 묶어서 조회
-- type별로 그룹화한 후, type 확인
SELECT type
FROM mypokemon
GROUP BY type;

-- 그룹에 조건 걸어 데이터 추출하기
SELECT type, count(*), count(1), avg(height), max(weight)
FROM mypokemon
GROUP BY type;

-- HAVING은 GROUP BY에 조건을 걸어준다.
SELECT type, count(*), count(1), avg(height), max(weight)
FROM mypokemon
GROUP BY type
HAVING count(1) = 2;

/*
반드시 암기 !!
select, from, where, group by, having, order by
셀, 프, 웨, 그룹, 해, 오
*/

-- count, max : group 함수이기 때문에 group by절로 데이터를 묶은 후 사용할 수 있음.
SELECT type, count(1), MAX(weight)
FROM mypokemon;

SELECT type, count(1), MAX(weight)
FROM mypokemon
WHERE name LIKE "%a%"
GROUP BY type;

SELECT type, count(1), MAX(weight)
FROM mypokemon
WHERE name LIKE "%a%"
GROUP BY type
HAVING MAX(height) > 1
ORDER BY 3;