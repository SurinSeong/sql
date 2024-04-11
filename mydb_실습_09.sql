-- 실슴 : 여러 테이블의 데이터를 한 번에 조회해보자 (UNION) --
USE pokemon;
/*
MISSION (1)
내 포켓몬과 친구의 포켓몬에 어떤 타입들이 있는지 중복 제외하고 같은 타입은 한번씩만 가져와주세요.
*/
SELECT type
FROM mypokemon_9
UNION
SELECT type
FROM friendpokemon;

/*
MISSION (2)
내 포켓몬과 친구의 포켓몬 중에 풀(grass)타입 포켓몬들의 포켓몬 번호와 이름을 중복 포함하여 전부 다 가져와주세요.
*/
SELECT number, name
FROM mypokemon_9
WHERE type = "grass"
UNION ALL
SELECT number, name
FROM friendpokemon
WHERE type = "grass";

-- 실습 : 여러 테이블을 다뤄서 원하는 값 가져오기
/*
MISSION (1)
나도 가지고 있고, 친구도 가지고 있는 포켓몬의 이름을 가져와주세요.
*/
SELECT A.name
FROM mypokemon_9 AS A
INNER JOIN friendpokemon AS B
ON A.name = B.name;

/*
MISSION (2)
나만 가지고 있고, 친구는 안 가지고 있는 포켓몬의 이름을 가져와주세요.
*/
SELECT A.name
FROM mypokemon_9 AS A
LEFT JOIN friendpokemon AS B
ON A.name = B.name
WHERE B.name is null;