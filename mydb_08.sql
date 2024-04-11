-- 테이블 합치기

USE pokemon;

-- 테이블 생성하기
-- mypokemon_8
CREATE TABLE mypokemon_8 (number INT,
						  name VARCHAR(20),
						  type VARCHAR(20)
                          );
-- 데이터 삽입
INSERT INTO mypokemon_8(number, name, type)
VALUES (10, 'caterpie', 'bug'),
	   (25, 'pikachu', 'electric'),
	   (26, 'raichu', 'electric'),
	   (133, 'eevee', 'normal'),
	   (152, 'chikoirita', 'grass');
       
-- ability
CREATE TABLE ability (number INT,
					  height FLOAT,
                      weight FLOAT,
                      attack INT,
                      defense INT,
                      speed INT
                      );
-- 데이터 삽입
INSERT INTO ability (number, height, weight, attack, defense, speed)
VALUES (10, 0.3, 2.9, 30, 35, 45),
	   (25, 0.4, 6, 55, 40, 90),
	   (125, 1.1, 30, 83, 57, 105),
       (133, 0.3, 6.5, 55, 50, 55),
       (137, 0.8, 36.5, 60, 70, 40),
       (152, 0.9, 6.4, 49, 65, 45),
       (153, 1.2, 15.8, 62, 80, 60),
       (172, 0.3, 2, 40, 15, 60),
       (470, 1, 25.5, 110, 130, 95);
-- 테이블 조회
SELECT *
FROM mypokemon_8;
SELECT *
FROM ability;

/*
INNER JOIN
LEFT JOIN
RIGHT JOIN
CROSS JOIN
SELF JOIN
*/

-- INNER JOIN
SELECT *
FROM mypokemon_8 AS A
INNER JOIN ability AS B
ON A.number = B.number;

-- LEFT JOIN
SELECT *
FROM mypokemon_8 AS A
LEFT JOIN ability AS B
ON A.number = B.number;

-- RIGHT JOIN
SELECT *
FROM mypokemon_8 AS A
RIGHT JOIN ability AS B
ON A.number = B.number;

-- OUTER JOIN
-- left, right join을 union한다.
SELECT *
FROM mypokemon_8 AS A
LEFT JOIN ability AS B
ON A.number = B.number
UNION
SELECT *
FROM mypokemon_8 AS A
RIGHT JOIN ability AS B
ON A.number = B.number;

-- CROSS JOIN
-- ON 없음 : 왜? 하나씩 각각 연결됨.
SELECT *
FROM mypokemon_8
CROSS JOIN ability;

-- SELF JOIN
SELECT *
FROM mypokemon as t1
inner join mypokemon as t2
on t1.number = t2.number;