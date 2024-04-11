-- 여러 테이블 한 번에 다루기

# mypokemon 테이블 만들기
CREATE TABLE mypokemon_9 (number INT,
							name VARCHAR(20),
							type VARCHAR(20),
                            attack INT,
                            defense INT);
# 데이터 넣어주기
INSERT INTO mypokemon_9 (number, name, type, attack, defense)
VALUES (10, "caterpie", "bug", 30, 35),
		(25, "pikachu", "electric", 55, 40),
        (26, "raichu", "electric", 90, 55),
        (133, "eevee", "normal", 55, 50),
        (152, "chikorita", "grass", 49, 65);
# friendpokemon 테이블 만들기
CREATE TABLE friendpokemon (number INT,
							name VARCHAR(20),
							type VARCHAR(20),
                            attack INT,
                            defense INT);
# 데이터 넣어주기
INSERT INTO friendpokemon (number, name, type, attack, defense)
VALUES (26, "raichu", "electric", 80, 60),
        (125, "electabuzz", "electric", 83, 57),
        (137, "porygon", "normal", 60, 70),
        (153, "bayleef", "grass", 62, 80),
        (172, "pichu", "electric", 40, 15),
        (470, "leafeon", "grass", 110, 130);
# 데이터 조회
SELECT * FROM mypokemon_9;
SELECT * FROM friendpokemon;

-- 합집합
/*
UNION : 동일한 값은 제외하고 보여줌
UNION ALL : 동일한 값도 포함해서 보여줌
ORDER BY는 처음 쿼리에서 가져온 컬럼으로만 가능함.
*/
-- UNION ALL 사용 예제
-- 겹치는 것도 다 나옴. 중복 가능
SELECT name
FROM mypokemon_9
UNION ALL
SELECT name
FROM friendpokemon;

-- UNION 사용 예제
-- 중복 허용 X
SELECT name
FROM mypokemon_9
UNION
SELECT name
FROM friendpokemon;

-- UNION, ORDER BY 사용 예제
SELECT number, name, attack
FROM mypokemon_9
UNION
SELECT number, name, attack
FROM friendpokemon
-- order by는 query 가장 마지막에 작성함.
-- 첫 번째 query에서 가져온 컬럼으로만 가능
ORDER BY number;

-- 데이터에서 데이터 빼기
-- 교집합
/*
INTERSECT (MySQL 사용 불가) --> JOIN 사용해야 함.
확인 하고 싶은 컬럼은 모두 다 기준으로 두고 합쳐야 함.
*/
-- 교집합 예제
SELECT A.name
FROM mypokemon_9 AS A
INNER JOIN friendpokemon AS B
ON A.name = B.name;

SELECT A.name
FROM mypokemon_9 AS A
INNER JOIN friendpokemon AS B
-- ON에 내가 찾고 싶은 모든 컬럼을 넣을 수 있음. 이때는 ON에 들어있는 조건에 모두 맞아야 INNER JOIN의 결과로 나온다.
ON (A.number = B.number)
	AND (A.name = B.name)
    AND (A.type = B.type)
    AND (A.attack = B.attack)
    AND (A.defense = B.defense);

-- 차집합
/*
MINUS (MySQL 사용 불가) --> JOIN 사용해야 함.
A에는 있는데 B에는 없는 데이터 가져와
b is null : 순수하게 a의 값만 추출
*/
SELECT A.name
FROM mypokemon_9 AS A
LEFT JOIN friendpokemon AS B
ON A.name = B.name
# 차집합을 위해 B에는 존재하지 않는다.라는 조건을 걸어준다.
WHERE B.name IS NULL;

SELECT A.name
FROM mypokemon_9 AS A
LEFT JOIN friendpokemon AS B
-- 아래 조건을 모두 만족하는 LEFT JOIN 에서
ON (A.number = B.number)
	AND (A.name = B.name)
    AND (A.type = B.type)
    AND (A.attack = B.attack)
    AND (A.defense = B.defense)
-- B의 name이 null인 A의 name을 조회
WHERE B.name IS NULL;