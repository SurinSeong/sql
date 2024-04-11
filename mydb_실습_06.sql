## 실습 ##
-- pokemon 데이터베이스를 사용하기
USE pokemon; 
SHOW tables;

SELECT *
FROM mypokemon
ORDER BY number;
/*
MISSION (1)
포켓몬 테이블에서 이름(name)의 길이가 5보다 큰 포켓몬들을 타입(type)을 기준으로 그룹화하고,
몸무게(weight)의 평균이 20 이상인 그룹의 타입과, 몸무게의 평균을 가져와주세요.
이때, 결과는 몸무게의 평균을 내림차순으로 정렬해주세요.
*/
SELECT type, avg(weight)
FROM mypokemon
WHERE LENGTH(name) > 5
GROUP BY type
HAVING avg(weight) >= 20
ORDER BY avg(weight) DESC;

/*
MISSION (2)
포켓몬 테이블에서 번호(number)가 200보다 작은 포켓몬들을 타입(type)을 기준으로 그룹화한 후에,
몸무게(weight)의 최댓값이 10보다 크거나 같고 최솟값은 2보다 크거나 같은 그룹의
타입, 키(height)의 최솟값, 최댓값을 가져와주세요.
이때, 결과는 키의 최솟값의 내림차순으로 정렬해주시고,
만약 키의 최솟값이 같다면 키의 최댓값의 내림차순으로 정렬해주세요.
*/
SELECT type, MIN(height), MAX(height)
FROM mypokemon
WHERE number < 200
GROUP BY type
HAVING MAX(weight) >= 10 and MIN(weight) >= 2
ORDER BY 2 DESC, 3 DESC;

## 추가 실습 ##
-- 데이터를 그룹화해서 통계 내기
/*
MISSION (1)
포켓몬의 타입별 키의 평균을 가져와주세요.
*/
SELECT type, avg(height)
FROM mypokemon
GROUP BY type;

/*
MISSION (2)
포켓몬의 타입별 몸무게의 평균을 가져와주세요.
*/
SELECT type, avg(weight)
FROM mypokemon
GROUP BY type;

/*
MISSION (3)
포켓몬의 타입별 키의 평균과 몸무게의 평균을 함께 가져와주세요.
*/
SELECT type, avg(height), avg(weight)
FROM mypokemon
GROUP BY type;

/*
MISSION (4)
키의 평균이 0.5 이상인 포켓몬의 타입을 가져와주세요.
*/
SELECT type
FROM mypokemon
GROUP BY type
HAVING avg(height) >= 0.5;

/*
MISSION (5)
몸무게의 평균이 20 이상인 포켓몬의 타입을 가져와주세요.
*/
SELECT type
FROM mypokemon
GROUP BY type
HAVING avg(weight) >= 20;

/*
MISSION (6)
포켓몬의 타입별 번호(number)의 합을 가져와주세요.
*/
SELECT type, sum(number)
FROM mypokemon
GROUP BY type;

/*
MISSION (7) 중요
키가 0.5 이상인 포켓몬이 포켓몬의 type 별로 몇개씩 있는지 가져와주세요.
*/
SELECT type, count(height), count(1)
FROM mypokemon
WHERE height >= 0.5
GROUP BY type;

/*
MISSION (8)
포켓몬 타입별 키의 최솟값을 가져와주세요.
*/
SELECT type, MIN(height)
FROM mypokemon
GROUP BY type;

/*
MISSION (9)
포켓몬 타입별 몸무게의 최댓값을 가져와주세요
*/
SELECT type, MAX(weight)
FROM mypokemon
GROUP BY type;

/*
MISSION (10)
(키의 최솟값이 0.5보다 크고 몸무게의 최댓값이 30보다 작은) [포켓몬 타입]을 가져와주세요
*/
SELECT type
FROM mypokemon
GROUP BY type
HAVING MIN(height) > 0.5 and MAX(weight) < 30;