-- 실습 : 서브쿼리로 복잡한 조건을 하나의 쿼리로 만들어보자 --
/*
MISSION (1)
내 포켓몬 중에 몸무게가 가장 많이 나가는 포켓몬의 번호를 가져와주세요.
*/
-- 몸무게가 가장 많이 나가는 ~
SELECT number, RANK() over (ORDER BY weight DESC) AS weight_rank
FROM ability_10;

-- 최종
SELECT A.number
FROM (SELECT number, RANK() over (ORDER BY weight DESC) AS weight_rank
	  FROM ability_10) AS A
WHERE weight_rank = 1;

-- 선생님 답
SELECT number
FROM ability_10
WHERE weight = (SELECT MAX(weight)
				FROM ability_10);
                
/*
MISSION (2)
속도가 모든 전기 포켓몬의 공격력보다 하나라도 작은 포켓몬의 번호를 가져와주세요.
*/
-- 전기 포켓몬의 공격력
SELECT attack
FROM ability_10
WHERE type = "electric";

-- 최종
SELECT number
FROM ability_10
WHERE speed < ANY(SELECT attack
				  FROM ability_10
				  WHERE type = "electric");

-- 속도가 모든 전기 포켓몬의 공격력보다 하나라도 작다. = 전기 포켓몬의 공격력의 최댓값보다 작으면 됨.
SELECT number
FROM ability_10
WHERE speed < (SELECT MAX(attack)
			   FROM ability_10
               WHERE type = "electric");

/*
MISSION (3)
공격력이 방어력보다 큰 포켓몬이 있다면 모든 포켓몬의 이름을 가져와주세요.
*/
-- 공격력이 방어력보다 큰
SELECT number
FROM ability_10
WHERE attack > defense;

-- 최종
SELECT name
FROM mypokemon_10
WHERE EXISTS (SELECT number
			  FROM ability_10
			  WHERE attack > defense);
              
-- 추가 실습 : 서브쿼리로 복잡한 조건을 하나의 쿼리로 만들어보자 --
/*
MISSION (1)
이브이의 번호 133을 활용해서, 이브이의 영문 이름, 키, 몸무게를 가져와주세요.
이때, 키는 height, 몸무게는 weight이라는 별명으로 가져와주세요.
*/
-- 키 가져오기
SELECT height
FROM ability_10
WHERE number = 133;
-- 몸무게 가져오기
SELECT weight
FROM ability_10
WHERE number = 133;
-- 최종
SELECT A.name,
	   (SELECT height
		FROM ability_10
		WHERE number = 133) AS height,
	   (SELECT weight
		FROM ability_10
		WHERE number = 133) AS weight
FROM mypokemon_10 AS A
WHERE number = 133;

/*
MISSION (2)
속도가 2번째로 빠른 포켓몬의 번호와 속도를 가져와주세요.
*/
-- 속도
SELECT number, speed, RANK() OVER (ORDER BY speed DESC) AS speed_rank
FROM ability_10;
-- 최종
SELECT number, speed
FROM (SELECT number, speed, RANK() OVER (ORDER BY speed DESC) AS speed_rank
	  FROM ability_10) AS A
WHERE speed_rank = 2;

/*
MISSION (3)
방어력이 모든 전기 포켓몬의 방어력보다 큰 포켓몬의 이름을 가져와주세요
*/
-- 전기 포켓몬의 방어력
SELECT defense
FROM ability_10
WHERE type = "electric";
-- 최종
-- 내가 한 거는 스칼라 서브쿼리의 값이 하나일 때 사용할 수 있음.
SELECT (SELECT name
		FROM mypokemon_10
        WHERE number = A.number) AS name
FROM ability_10 AS A
WHERE defense > ALL(SELECT defense
					FROM ability_10
					WHERE type = "electric");
                    
-- 선생님 답
-- name이 두 개 이상일 때도 사용가능
SELECT name
FROM mypokemon_10
WHERE number IN(SELECT number
				FROM ability_10
				WHERE defense > ALL(SELECT defense
									FROM ability_10
									WHERE type = "electric")
				);
                    
-- 다른 방법 : 방어력이 모든 전기 포켓몬의 방어력보다 크다 -> 전기 포켓몬의 최대 방어력보다 크면 출력
SELECT (SELECT name
		FROM mypokemon_10
        WHERE number = A.number) AS name
FROM ability_10 AS A
WHERE defense > (SELECT MAX(defense)
					FROM ability_10
					WHERE type = "electric");