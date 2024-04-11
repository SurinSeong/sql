## 실습 ##
# pokemon 데이터베이스 사용하기
USE pokemon;
# mypokemon 테이블 확인하기
SELECT *
FROM mypokemon;

/*
MISSION (1)
이브이의 타입을 가져와주세요.
*/
SELECT type
FROM mypokemon
WHERE name = "eevee";

/*
MISSION (2)
캐터피의 공격력과 방어력을 가져와주세요.
*/
SELECT attack, defense
FROM mypokemon
WHERE name="caterpie";

/*
MISSION (3)
몸무게가 6kg 보다 큰 포켓몬들의 모든 데이터를 가져와주세요
*/
SELECT *
FROM mypokemon
WHERE weight > 6;

/*
MISSION (4)
키가 0.5m 보다 크고, 몸무게가 6kg 보다 크거나 같은 포켓몬들의 이름을 가져와주세요
*/
SELECT name
FROM mypokemon
WHERE (height > 0.5) and (weight >= 6);

/*
MISSION (5)
포켓몬 테이블에서 공격력이 50 미만 이거나, 방어력이 50 미만인 포켓몬들의 이름을
‘weak_pokemon’이라는 별명으로 가져와주세요.
*/
SELECT name as "weak_pokemon"
FROM mypokemon
WHERE (attack < 50) or (defense < 50);

/*
MISSION (6)
노말타입이아닌포켓몬들의데이터를전부가져와주세요.
*/
SELECT *
FROM mypokemon
WHERE type != "normal";

/*
MISSION (7)
타입이(normal, fire, water, grass)중에하나인포켓몬들의이름과타입을가져와주세요.
*/
SELECT name, type
FROM mypokemon
WHERE type in ("normal", "fire", "water", "grass");

/*
MISSION (8)
공격력이40과60 사이인포켓몬들의이름과공격력을가져와주세요.
*/
SELECT name, attack
FROM mypokemon
WHERE attack BETWEEN 40 and 60;

/*
MISSION (9)
이름에‘e’가포함되는포켓몬들의이름을가져와주세요.
*/
SELECT name
FROM mypokemon
WHERE name like "%e%";

/*
MISSION (10)
이름에‘i’가포함되고, 속도가50 이하인포켓몬데이터를전부가져와주세요.
*/
SELECT *
FROM mypokemon
WHERE (name like "%i%") and (speed <= 50);

/*
MISSION (11)
이름이‘chu’로끝나는포켓몬들의이름, 키, 몸무게를가져와주세요.
*/
SELECT name, height, weight
FROM mypokemon
WHERE name like "%chu";

/*
MISSION (12)
이름이‘e’로끝나고, 방어력이50 미만인포켓몬들의이름, 방어력을가져와주세요.
*/
SELECT name, defense
FROM mypokemon
WHERE name like "%e" and defense < 50;

/*
MISSION (13)
공격력과방어력의차이가10 이상인포켓몬들의이름, 공격력, 방어력을가져와주세요.
*/
SELECT name, attack, defense
FROM mypokemon
WHERE ABS(attack - defense) >= 10;

/*
MISSION (14)
능력치의합이150이상인포켓몬의이름과능력치의합을가져와주세요.
이때, 능력치의합은‘total’이라는별명으로가져와주세요.
조건1. 능력치의합은공격력, 방어력, 속도의합을의미합니다.
*/
SELECT name, (attack + defense + speed) AS total
FROM mypokemon
WHERE (attack + defense + speed) >= 150;