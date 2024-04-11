# 규칙 만들기
## 조건 만들기
-- WHERE는 전체에 걸리는 조건
-- having : groupby에 걸리는 조건
-- IF는 필요에 의해 임시 변수로 나타내기 위해서
-- IFNULL : null이면, 새로운 값 반환 / 새로운 변수 만들 수 있음.
-- CASE : 조건을 여러 개 만들 때 사용, AS 가 꼭 필요

# 예제에 필요한 테이블 만들기
CREATE TABLE pokemon_7 (number INT,
						name VARCHAR(20),
                        type VARCHAR(20),
                        attack INT,
                        defense INT
                        );
SELECT * FROM pokemon_7;

# 테이블명 바꿔주기
ALTER TABLE pokemon_7 RENAME mypokemon_7;

# 데이터 삽입
INSERT INTO mypokemon_7 (number, name, type, attack, defense)
VALUES (10, 'caterpie', 'bug', 30, 35),
	   (25, 'pikachu', 'electric', 55, 40),
       (26, 'raichu', 'electric', 90, 55),
       (125, 'electabuzz', 'electric', 83, 57),
       (133, 'eevee', 'normal', 55, 50),
       (137, 'porygon', 'normal', 60, 70),
       (152, 'chikoirita', 'grass', 49, 65),
       (153, 'bayleef', 'grass', 62, 80),
       (172, 'pichu', 'electric', 40, 15),
       (470, 'leafeon', 'grass', 110, 130);
# 데이터 조회
SELECT *
FROM mypokemon_7;

# 예제 1
SELECT name,
	   IF(attack >= 60, "strong", "weak") AS attack_class
FROM mypokemon_7;

# 예제 2
# 이름이 null이면 "unknown"을 넣어주기
SELECT name,
		IFNULL(name, "unknown") AS full_name
FROM mypokemon_7;

# 예제 3
SELECT name,
		CASE
			WHEN attack >= 100 then "very strong"
            WHEN attack >= 80 then "strong"
            WHEN attack >= 60 then "average"
            ELSE "weak"
		END AS "attack_class"
FROM mypokemon_7;

# defense
SELECT name,
		CASE
			WHEN defense >= 100 then "very strong"
            WHEN defense >= 70 then "strong"
            WHEN defense >= 50 then "average"
            ELSE "weak"
		END AS "defense_class"
FROM mypokemon_7;

# 예제 5
SELECT name, type,
		CASE type
			WHEN "bug" THEN "grass"
            WHEN "electric" THEN "water"
            WHEN "grass" THEN "bug"
		END AS rival_type
FROM mypokemon_7;

## 함수 만들기
-- 원하는 함수 만들기 : f(x) = y

## 예제 ##
SET GLOBAL log_bin_trust_function_creators = 1;

DELIMITER //
CREATE FUNCTION get_ability(attack INT, defense INT)
	RETURNS INT
BEGIN
	DECLARE a INT;
    DECLARE b INT;
    DECLARE ability INT;
    SET a = attack;
    SET b = defense;
    SELECT a + b INTO ability;
    RETURN ability;
END
//
DELIMITER ;

SELECT name, get_ability(attack, defense) AS ability
FROM mypokemon_7
ORDER BY 2;

# 선생님 함수

DELIMITER //
CREATE FUNCTION getAbility(attack INT, defense INT)
	RETURNS INT
BEGIN
    declare ability int;
    set ability = attack + defense;
    return ability;
END
//
DELIMITER ;

-- 출력
SELECT name, getAbility(attack, defense) AS ability
FROM mypokemon_7
ORDER BY 2; 
