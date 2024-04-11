# 테이블 만들기
USE pokemon;

CREATE TABLE sample_pokemon (number INT,
							 name VARCHAR(20),
                             type VARCHAR(20),
                             attack INT,
                             defense INT,
                             speed INT);
-- auto_increment primary key : 자동으로 숫자를 채워줌. ==> number 정의할 때 사용하면 좋음. (인덱스 느낌) / insert에서 number 따로 채울 필요 없어짐.

INSERT INTO sample_pokemon (number, name, type, attack, defense, speed)
VALUES (1, "Pikachu", "electric", 55, 40, 90),
	   (2, "Raichu", "electric", 85, 50, 110),
       (3, "Jolteon", "electric", 65, 60, 130),
       (4, "Zapdos", "electric", 90, 85, 100),
       (5, "Electabuzz", "electric", 83, 57, 105),
       (6, "Bulbasaur", "grass", 49, 49, 45);

-- 데이터 조회
SELECT * FROM sample_pokemon;

-- 속도가 모든 전기 포켓몬의 공격력보다 하나라도 작은 포켓몬의 번호를 가져와주세요.
SELECT *
FROM sample_pokemon
WHERE speed < ANY(SELECT attack
				  FROM sample_pokemon
				  WHERE type = "electric");
-- 속도가 모든 전기 포켓몬의 공격력보다 하나라도 작다. = 전기 포켓몬의 공격력의 최댓값보다 작으면 됨.
SELECT *
FROM sample_pokemon
WHERE speed < (SELECT MAX(attack)
			   FROM sample_pokemon
               WHERE type = "electric");
