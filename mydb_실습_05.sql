## 실습 ##
# pokemon 데이터베이스 사용
USE pokemon;
SHOW tables;
# 새로운 테이블 만들기
CREATE TABLE mypokemon2 (number INT,
						 name VARCHAR(20),
                         type VARCHAR(20),
                         attack INT,
                         defense INT,
                         capture_date DATE);
# 데이터 삽입
INSERT INTO mypokemon2 (number, name, type, attack, defense, capture_date)
VALUES (10, "caterpie", "bug", 30, 35, "2019-10-14"),
	   (25, "pikachu", "electric", 55, 40, "2018-11-04"),
       (26, "raichu", "electric", 90, 55, "2019-05-28"),
       (125, "electabuzz", "electric", 83, 57, "2020-12-29"),
       (133, "eevee", "normal", 55, 50, "2021-10-03"),
       (137, "porygon", "normal", 60, 70, "2021-01-16"),
       (152, "chikolrita", "grass", 49, 65, "2020-03-05"),
       (153, "bayleef", "grass", 62, 80, "2022-01-01");
# mypokemon2 확인
SELECT *
FROM mypokemon2;
# 데이터를 요청대로 만들어보기
/*
MISSION (1)
포켓몬 테이블에서 포켓몬의 이름과 이름의 글자 수를 이름의 글자 수로 정렬해서 가져와주세요.
(정렬 순서는 글자 수가 적은 것부터 많은 것순으로 해주세요.)
*/
SELECT name, length(name)
FROM mypokemon2
ORDER BY 2;

/*
MISSION (2)
포켓몬 테이블에서 방어력 순위를 보여주는 컬럼을 새로 만들어서 ‘defense_rank’라는 별명으로 가져와주세요.
이때, 포켓몬 이름 데이터도 함께 가져와주세요.
조건1: 방어력 순위란 방어력이 큰 순서대로 나열한 순위를 의미합니다.
조건2: 공동 순위가 있으면 다음 순서로 건너뛰어주세요
*/
SELECT name, RANK() OVER (ORDER BY defense DESC) defense_rank
FROM mypokemon2;

/*
MISSION (3)
포켓몬 테이블에서 포켓몬을 포획한 지 기준 날짜까지 며칠이 지났는지를 ‘days’라는 별명으로 가져와주세요.
이때, 포켓몬의 이름도 함께 가져와주세요.
조건: 기준날짜는 2022년 2월 14일입니다.
*/
SELECT name, DATEDIFF("2022-02-14", capture_date) AS days
FROM mypokemon2;

# 다양한 함수를 사용해보자
/*
MISSION (1)
포켓몬의 이름을 마지막 3개 문자만, ‘last_char’이라는 별명으로 가져와주세요.
*/
SELECT right(name, 3) AS "last_char"
FROM mypokemon2;

/*
MISSION (2)
포켓몬 이름을 왼쪽에서 2개 문자를 ‘left2’라는 별명으로 가져와주세요.
*/
SELECT left(name, 2) AS "left2"
FROM mypokemon2;

/*
MISSION (3)
포켓몬 이름에서 이름에 o가 포함된 포켓몬만 모든 소문자 o를 대문자 O로 바꿔서 ’bigO’라는 별명으로 가져와주세요.
Ex) 이름이 ‘pokemon’일 경우, ’bigO’ 값은 ’pOkemOn’이 됩니다.
*/
SELECT REPLACE(name, "o", "O") AS "bigO"
FROM pokemon.mypokemon2
WHERE name like "%o%";

/*
MISSION (4)
포켓몬 타입을 가장 첫 번째 글자 1자, 가장 마지막 글자 1자를 합친 후,
대문자로 변환해서 ‘type_code’라는 별명으로 가져와주세요.
이때, 이름도 함께 가져와주세요.
Ex) 타입이 ‘water’일 경우, ‘type_code’ 값은 ‘w’와 ‘r’를 대문자로 바꾼 ‘WR’이 됩니다.
*/
SELECT name, UPPER(CONCAT(left(type, 1), right(type, 1))) AS "type_code"
FROM mypokemon2;

# (4) 응용
-- DISTINCT : 중복 값을 하나씩만 출력 
SELECT distinct UPPER(CONCAT(left(type, 1), right(type, 1))) AS "type_code"
FROM pokemon.mypokemon2;

/*
MISSION (5)
포켓몬 이름의 글자 수가 8보다 큰 포켓몬의 데이터를 전부 가져와주세요
*/
SELECT *
FROM mypokemon2
WHERE LENGTH(name) > 8;

/*
MISSION (6)
모든 포켓몬의 공격력 평균을 정수로 반올림해서 ‘avg_of_attack’이라는 별명으로 가져와주세요.
*/
SELECT ROUND(AVG(attack), 0) AS "avg_of_attack"
FROM mypokemon2;

/*
MISSION (7)
모든 포켓몬의 방어력 평균을 정수로 내림해서 ‘avg_of_defense’ 이라는 별명으로 가져와주세요.
*/
SELECT FLOOR(AVG(defense)) AS "avg_of_defense"
FROM mypokemon2;

/*
MISSION (8)
이름의 길이가 8 미만인 포켓몬의 공격력의 2 제곱을 ‘attack2’라는 별명으로 가져와주세요.
이때, 이름도 함께 가져와주세요.
*/
SELECT name, POWER(attack, 2) AS "attack2"
FROM mypokemon2
WHERE LENGTH(name) < 8;

/*
MISSION (9)
모든 포켓몬의 공격력을 2로 나눈 나머지를 ‘div2’라는 별명으로 가져와주세요.
이때, 이름도 함께 가져와주세요.
*/
SELECT name, MOD(attack, 2) AS "div2"
FROM mypokemon2;

/*
MISSION (10)
공격력이 50 이하인 포켓몬의 공격력을 방어력으로 뺀 값의 절댓값을 ‘diff’라는 별명으로 가져와주세요.
이때, 이름도 함께 가져와주세요.
*/
SELECT name, ABS(attack - defense) AS "diff"
FROM mypokemon2
WHERE attack <= 50;

/*
MISSION (11)
현재 날짜와 시간을 가져와주세요.
각각 now_date, now_time이라는 별명으로 가져와주세요.
*/
SELECT DATE(NOW()) AS "now_date",
       TIME(NOW()) AS "now_time";

SELECT CURRENT_DATE() as "now_date",
	   CURRENT_TIME() as "now_time";

/*
MISSION (12)
포켓몬을 포획한 달(월, MONTH)을 숫자와 영어로 가져와주세요.
숫자는 month_num, 영어는 month_eng이라는 별명으로 가져와주세요.
*/
SELECT MONTH(capture_date) AS "month_num",
	   MONTHNAME(capture_date) AS "month_eng"
FROM mypokemon2;

/*
MISSION (13)
포켓몬을 포획한 날의 요일을 숫자와 영어로 가져와주세요.
숫자는 day_num, 영어는 day_eng이라는 별명으로 가져와주세요.
*/
SELECT DAYOFWEEK(capture_date) AS "day_num",
	   DAYNAME(capture_date) AS "day_eng"
FROM mypokemon2;

/*
MISSION (14)
포켓몬을 포획한 날의 연도, 월, 일을 각각 숫자로 가져와주세요.
연도는 year, 월은 month, 일은 day라는 별명으로 가져와주세요.
*/
SELECT YEAR(capture_date) AS "year",
	   MONTH(capture_date) AS "month",
       DAY(capture_date) AS "day"
FROM mypokemon2;