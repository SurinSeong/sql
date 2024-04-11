-- 실습 : 다양한 방식으로 테이블을 합쳐보자 --
USE pokemon;
/*
MISSION (1)
포켓몬 테이블과 능력치 테이블을 합쳐서 포켓몬 이름, 공격력, 방어력을 한 번에 가져와주세요.
이때, 포켓몬 테이블에 있는 모든 포켓몬의 데이터를 가져와주세요.
만약, 포켓몬의 능력치 데이터를 구할 수 없다면, NULL을 가져와도 좋습니다.
*/
SELECT A.name, B.attack, B.defense
FROM mypokemon_8 AS A
LEFT JOIN ability AS B
ON A.number = B.number;

/*
MISSION (2)
포켓몬 테이블과 능력치 테이블을 합쳐서 포켓몬 번호와 이름을 한 번에 가져와주세요.
이때, 능력치 테이블에 있는 모든 포켓몬의 데이터를 가져와주세요.
만약, 포켓몬의 이름 데이터를 구할 수 없다면, NULL을 가져와도 좋습니다.
*/
SELECT B.number, A.name
FROM mypokemon_8 AS A
RIGHT JOIN ability AS B
ON A.number = B.number;

-- 실습 : 테이블을 합쳐 원하는 값을 가져오자 --
/* mypokemon : number, name, type
   ability : number, height, weight, attack, defense, speed
*/
SELECT number, height, weight
FROM ability;

INSERT INTO ability (number, height, weight, attack, defense, speed)
VALUES (26, 0.8, 30, 90, 55, 110);

/*
MISSION (1)
내 포켓몬의 타입별 키의 평균을 가져와주세요.
*/
SELECT A.type, avg(B.height)
FROM mypokemon_8 AS A
LEFT JOIN ability AS B
ON A.number = B.number
GROUP BY A.type;

/*
MISSION (2)
내 포켓몬의 타입별 몸무게의 평균을 가져와주세요.
*/
SELECT A.type, avg(B.weight)
FROM mypokemon_8 AS A
LEFT JOIN ability AS B
ON A.number = B.number
GROUP BY A.type;

/*
MISSION (3)
내 포켓몬의 타입별 키의 평균과 몸무게의 평균을 함께 가져와주세요
*/
SELECT A.type, avg(B.height), avg(B.weight)
FROM mypokemon_8 AS A
LEFT JOIN ability AS B
ON A.number = B.number
GROUP BY A.type;

/*
MISSION (4)
번호가 100이상인 내 포켓몬들의 번호, 이름, 공격력, 방어력을 가져와주세요.
*/
SELECT A.number, A.name, B.attack, B.defense
FROM mypokemon_8 AS A
LEFT JOIN ability AS B
ON A.number = B.number
WHERE A.number >= 100;

/*
MISSION (5)
공격력과 방어력의 합이 큰 순서대로 내 포켓몬들의 이름을 나열해주세요.
*/
SELECT A.name
FROM mypokemon_8 AS A
LEFT JOIN ability AS B
ON A.number = B.number
ORDER BY (B.attack + B.defense) DESC;

/*
MISSION (6)
속도가 가장 빠른 내 포켓몬의 이름을 가져와주세요.
*/
SELECT A.name
FROM mypokemon_8 AS A
LEFT JOIN ability AS B
ON A.number = B.number
ORDER BY B.speed DESC
LIMIT 1;

# RANK로 표시
SELECT A.name, RANK() OVER(ORDER BY B.speed DESC) AS speed_rank
FROM mypokemon_8 AS A
LEFT JOIN ability AS B
ON A.number = B.number
LIMIT 1;