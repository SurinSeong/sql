-- 서브쿼리 : 조건에 조건 더하기
/*
서브쿼리 : 하나의 쿼리 안에 포함된 또 하나의 쿼리
반드시 괄호 안에 작성되어야 함.
SELECT, FROM, WHERE, HAVING, ORDER BY절에 사용 가능
INSERT, UPDATE, DELETE문에도 사용 가능
; 사용하지 않음
*/

USE pokemon;
# mypokemon 테이블 만들기
CREATE TABLE mypokemon_10 (number INT,
							name VARCHAR(20));
# 데이터 넣기
INSERT INTO mypokemon_10 (number, name)
VALUES (10, "caterpie"),
		(25, "pikachu"),
        (26, "raichu"),
        (133, "eevee"),
        (152, "chikorita");
# ability 테이블 만들기
CREATE TABLE ability_10 (number INT,
						 type VARCHAR(20),
                         height FLOAT,
                         weight FLOAT,
                         attack INT,
                         defense INT,
                         speed INT);
# 데이터 넣기
INSERT INTO ability_10 (number, type, height, weight, attack, defense, speed)
VALUES (10, "bug", 0.3, 2.9, 30, 35, 45),
	   (25, "electric", 0.4, 6, 55, 40, 90),
       (26, "electric", 0.8, 30, 90, 55, 110),
       (133, "normal", 0.3, 6.5, 55, 50, 55),
       (152, "grass", 0.9, 6.4, 49, 65, 45);
# 데이터 확인
SELECT * FROM mypokemon_10;
SELECT * FROM ability_10;

-- SELECT절의 서브쿼리
/*
스칼라 서브쿼리
** 반드시 결과값이 하나의 값 !!**
*/
-- 예제 : 피카츄의 번호, 영문 이름, 키를 가져와주세요.
SELECT number,
	   name,
       (SELECT height
        FROM ability_10
        WHERE number = A.number) as height
FROM mypokemon_10 AS A
WHERE name = "pikachu";

-- FROM절의 서브쿼리
/*
인라인 뷰 서브쿼리
결과값이 하나의 테이블 (가장 많이 사용됨)
별명이 꼭 필요함
*/
-- 예제 : 키 순위가 3순위인 포켓몬의 번호와 키 순위를 가져와주세요
-- 1st. 키 순위 가져오기
SELECT number, RANK() OVER (ORDER BY height DESC) AS height_rank
FROM ability_10;

-- 2nd. 3순위인 번호화 키 순위 가져오기
SELECT A.number, A.height_rank
FROM (SELECT number, RANK() OVER (ORDER BY height DESC) AS height_rank
	  FROM ability_10) AS A
WHERE height_rank = 3;

-- WHERE절의 서브쿼리
/*
중첩 서브쿼리
결과값이 하나의 컬럼 ! (하나의 컬럼에는 여러 개의 값이 존재할 수 있음.)
연산자와 함께 사용 -> WHERE 컬럼명 연산자 서브쿼리
	비교 연산자 사용 : 결과값이 하나의 값
    주요 연산자 사용 : 결과값이 하나의 컬럼. (EXISTS 단독 사용, 여러 컬럼)
*/
-- 예제 1 : 키가 평균 키'보다 작은' 포켓몬의 번호를 가져와주세요
-- 평균 키
SELECT avg(height)
FROM ability;

SELECT number
FROM ability_10
WHERE height < (SELECT avg(height)
				FROM ability_10);
                
-- 예제 2 : 공격력이 '모든' 전기 포켓몬의 공격력'보다 작은' 포켓몬의 번호를 가져와주세요.
-- 전기 포켓몬의 공격력
SELECT attack
FROM ability_10
WHERE type = "electric";
-- 최종
SELECT number
FROM ability_10
WHERE attack < ALL(SELECT attack
				   FROM ability_10
                   WHERE type = "electric");
                   
-- 다른 방법 : 공격력이 전기 포켓몬의 최소 공격력보다 작은 번호
SELECT number
FROM ability_10
WHERE attack < (SELECT MIN(attack)
				   FROM ability_10
                   WHERE type = "electric");
                   
-- 예제 3 : 방어력이 모든 전기 포켓몬의 공격력'보다 하나라도 큰' 포켓몬의 번호를 가져오기
SELECT number
FROM ability_10
WHERE defense > ANY(SELECT attack
					FROM ability_10
                    WHERE type = "electric");
-- 다른 방법 : 방어력이 전기 포켓몬의 최소 공격력 보다 큰 포켓몬 번호 가져오기
SELECT number
FROM ability_10
WHERE defense > (SELECT MIN(attack)
					FROM ability_10
                    WHERE type = "electric");
                    
-- 예제 4 : 벌레 타입 포켓몬이 '있다면' 모든 포켓몬의 번호를 가져오기
-- 벌레 타입 포켓몬
SELECT *
FROM ability_10
WHERE type = "bug";

SELECT number
FROM ability_10
WHERE EXISTS (SELECT *
			  FROM ability_10
              WHERE type = "bug");