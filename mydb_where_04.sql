# 조건 매기기
# WHERE 조건식 -> 조건식이 참인 것만 선택

# 조건에 맞는 데이터 가져오기
# 1 = True, 0 = False
SELECT 1 = 1;

SHOW databases;
USE pokemon;
SELECT *
FROM mypokemon;

# number만 가져오기
SELECT number
FROM mypokemon;

# 피카츄의 number만 가져오기
SELECT number
FROM mypokemon
WHERE name = "pikachu";

# 속도가 50보다 큰 포켓몬 이름 찾기
SELECT name
FROM mypokemon
WHERE speed >= 50;

# 전기 타입이 아닌 포켓몬 이름 찾기
SELECT name
FROM mypokemon
WHERE type != "electric";

# 속도가 100 이하이고 전기타입인 포켓몬의 이름 찾기
SELECT name
FROM mypokemon
WHERE (speed <= 100) and (type = "electric");

# 벌레타입이거나 노말타입인 포켓몬의 이름 찾기
SELECT name
FROM mypokemon
WHERE (type = "bug") or (type = "normal");

SELECT name
FROM mypokemon
WHERE type in ("bug", "normal");

# 속도가 100이하이고 벌레타입이 아닌 포켓몬의 이름
SELECT name
FROM mypokemon
WHERE (speed <= 100) and (type != "bug");

# 속도가 50과 100 사이인 포켓몬 이름
SELECT name
FROM mypokemon
WHERE speed BETWEEN 50 and 100;

# 이름이 "chu"로 끝나는 포켓몬 이름 찾기
SELECT name
FROM mypokemon
WHERE name like "%chu";

# 이름에 "a"가 들어있는 포켓몬 이름 찾기
SELECT name
FROM mypokemon
WHERE name like "%a%";

# 이름이 "c"로 시작하는 포켓몬 이름
SELECT name
FROM mypokemon
WHERE name like "c%";