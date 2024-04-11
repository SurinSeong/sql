## 실습 ##
/*
MISSION
공격력과 방어력의 합이 120보다 크면 ‘very strong’, 90보다 크면 ‘strong’,
모두 해당되지 않으면 ‘not strong’를 반환하는 함수 ‘isStrong’을 만들고 사용해주세요.
조건1: attack과 defense를 입력값으로 사용하세요.
조건2: 결과값 데이터 타입은 VARCHAR(20)로 해주세요.
*/
SET GLOBAL log_bin_trust_function_creators = 1;

DELIMITER //
CREATE FUNCTION is_strong(attack INT, defense INT)
	RETURNS VARCHAR(20)
BEGIN
	DECLARE a INT;
    DECLARE b INT;
    DECLARE isstrong VARCHAR(20);
    SET a = attack;
    SET b = defense;
    # CASE WHEN THEN END 사용
    SELECT CASE
				WHEN a + b > 120 THEN "very strong"
                WHEN a + b > 90 THEN "strong"
                ELSE "not strong"
			END INTO isstrong;
    RETURN isstrong;
END
//
DELIMITER ;

SELECT name,
		is_strong(attack, defense) AS "is_strong"
FROM mypokemon_7;

# 다른 코드의 함수
DELIMITER //
CREATE FUNCTION isStrong(attack INT, defense INT)
	RETURNS VARCHAR(20)
BEGIN
	DECLARE a INT;
    DECLARE b INT;
    DECLARE strong VARCHAR(20);
    SET a = attack;
    SET b = defense;
# if 사용해보기
/*
if(조건, True일 때 결과, False일 때 결과)
결과에 새로운 조건을 넣을 수 있음.
*/
	SELECT IF(a + b > 120, "very strong",
				IF(a + b > 90, "strong", "not strong"))
			INTO strong;
	RETURN strong;
END
//          
DELIMITER ;

-- 출력
SELECT name, isStrong(attack, defense) AS "is_strong"
FROM mypokemon_7;

-- if-else 사용하기
 DELIMITER //
 CREATE FUNCTION is_strong_t(attack INT, defense INT)
	RETURNS VARCHAR(20)
BEGIN
	DECLARE result VARCHAR(20);
    IF attack + defense > 120 THEN
		SET result = "very strong";
	ELSEIF attack + defense > 90 THEN
		SET result = "strong";
	ELSE 
		SET result = "not strong";
    END IF;
RETURN result;
END
 //
 DELIMITER ;
 
 -- 출력
SELECT name, is_strong_t(attack, defense) AS "is_strong"
FROM mypokemon_7;


## 조건문 만들기
/*
MISSION (1)
포켓몬의 번호가 150보다 작으면 값을 ‘old’로 반환하고, 번호가 150보다 크거나 같으면 값을 ‘new’로
반환해서 ‘age’ 라는 별명으로 가져와주세요.
*/
SELECT name,
		IF(number < 150, "old", "new") AS "age"
FROM mypokemon_7;

/*
MISSION (2)
포켓몬의 공격력과 방어력의 합이 100보다 작으면 값을 ‘weak’로 반환하고, 100보다 크거나 같으면
값을 ‘strong’로 반환해서 ‘ability’라는 별명으로 가져와주세요.
*/
SELECT name,
		IF(attack + defense < 100, "weak", "strong") AS "ability"
FROM mypokemon_7;

/*
MISSION (3)
포켓몬의 타입별 공격력의 평균이 60 이상이면 값을 True(1)로 반환하고, 60보다 작으면 False(0)를
반환해 ‘is_strong_type’이라는 별명으로 가져와주세요.
*/
SELECT type, 
		IF(avg(attack) >= 60, True, False) AS "is_strong_type"
FROM mypokemon_7
GROUP BY type;

/*
MISSION (4)
포켓몬의 공격력이 100보다 크고, 방어력도 100보다 크면 값을 True(1)로 반환하고, 둘 중 하나라도
100보다 작으면 False(0)를 반환해 ‘ace’라는 별명으로 가져와주세요
*/
SELECT name,
		IF((attack > 100) and (defense > 100), True, False) AS "ace"
FROM mypokemon_7;

/*
MISSION (5)
포켓몬의 번호가 100보다 작으면 값을 ‘<100’을 반환하고, 200보다 작으면 값을 ‘<200’을 반환하고,
500보다 작으면 값을 ‘<500’을 반환하는 규칙을 만들고, 각 포켓몬별 규칙적용값을 ‘number_bin’이라는
별명으로 가져와주세요.
*/
SELECT name,
		CASE WHEN number < 100 THEN "<100"
			 WHEN number < 200 THEN "<200"
             WHEN number < 500 THEN "<500"
		END AS "number_bin"
FROM mypokemon_7;

/*
MISSION (6)
아래 표에 따른 값을 반환하는 규칙을 만들고, 각 포켓몬별 규칙적용값을 ‘age_attack’이라는 별명으로 가져와주세요.
*/
SELECT name,
		CASE WHEN number >= 150 THEN (IF(attack >= 50, "new_strong", "new_weak"))
			 ELSE (IF(attack >= 50, "old_strong", "old_weak"))
		END AS "age_attack"
FROM mypokemon_7;

/*
MISSION (7)
타입별 포켓몬 수가 1개면 ‘solo’, 3개 미만이면 ‘minor’, 3개 이상이면 ‘major’를 반환하고,
‘count_by_type’이라는 별명으로 가져와주세요.
*/
SELECT type,
		CASE WHEN count(1) = 1 THEN "solo"
			 WHEN count(1) < 3 THEN "minor"
			 ELSE "major"
		END AS "count_by_type"
FROM mypokemon_7
GROUP BY type;