## 05. 원하는 데이터 만들기
# pokemon 데이터베이스 사용
USE pokemon;

# 데이터 줄 세우기
/*
ex1) 10번 이상 구매한 (조건), vip 고객 리스트 추출
ex2) 10번 이상 구매한 (조건), vip 고객을 "구매 금액" 순으로 (정렬) 추출
조건 + 순서 >> 순서를 정해서 원하는 데이터 가져오기
*/
# ORDER BY : 가져온 데이터를 정렬해주는 키워드, default = 오름차순(ASC) / DESC : 내림차순
# mypokemon 테이블에서 포켓몬의 숫자와 이름을 "숫자" 순으로 출력 (내림차순)
SELECT number, name
FROM mypokemon
ORDER BY number DESC;

# mypokemon 테이블에서 포켓몬의 숫자, 이름, 공격력, 방어력을 "공격력은 내림차순", "방어력은 오름차순" 으로 출력
SELECT number, name, attack, defense
FROM mypokemon
# ORDER BY attack DESC, defense;
# 다른 표현
# order by 사용 시, 순서를 정하기 때문에 인덱싱 기법 사용 가능
# 시작 : 1
ORDER BY 3 DESC, 4;

# 데이터 순위 만들기
/*
ex3) 10번 이상 구매한 (조건) vip 고객, 구매 금액 순으로 (정렬) "베스트 100" (순위) 추출 
*/
# RANK : 데이터를 정렬해 순위를 만들어주는 함수 RANK() OVER(ORDER BY [컬럼 이름])
# 항상 ORDER BY와 함께 사용
# SELECT절에 사용
# 공격력을 내림차순으로 순위 매기기, 이름과 공격력 출력
/*
RANK() : 공동 순위가 있으면 다음 순서로 건너 뜀 (1, 2, 3, 3, 5, ...)
DENSE_RANK() : 공동 순위가 있어도 다음 순위로 건너 뛰지 않음 (1, 2, 2, 3, 4, ...)
ROW_NUMBER() : 공동 순위 무시 (1, 2, 3, 4, ...)
*/
SELECT name,
	   attack,
       RANK() OVER (ORDER BY attack DESC) AS attack_rank,
       DENSE_RANK() OVER (ORDER BY attack DESC) AS attack_dense_rank,
       ROW_NUMBER() OVER (ORDER BY attack DESC) AS attack_row_number
FROM mypokemon;

# 문자형 데이터 함수
# 위치는?
SELECT LOCATE("A", "ABC");
# 문자열의 일부 추출
SELECT SUBSTRING("ABC", 2);
# 오른쪽 기준으로 원하는 위치까지 있는 글자
SELECT RIGHT("ABC", 1);
# 왼쪽 기준으로 원하는 위치까지 있는 글자
SELECT LEFT("ABC", 1);
# 대문자로
SELECT UPPER("abc");
# 소문자로
SELECT LOWER("XYZ");
# 문자열 길이
SELECT LENGTH("short");
# 문자열 붙이기 (아주 중요)
-- ORACLE에서는 '||', ms sql server에서는 '+' 도 사용함.
SELECT CONCAT("abc", "xyz");
# 대체
SELECT REPLACE("ABC", "A", "Z");

/*
< 예제 >
bts_music이라는 DB 만들기
butter Table 생성
lyric 만들기
*/
# DB 만들기
CREATE DATABASE bts_music;
# DB 확인
SHOW DATABASES;
# bts_music 사용
USE bts_music;
# 테이블 만들기
CREATE TABLE butter (part INT,
					 lyric VARCHAR(50));
# 테이블 확인
SHOW TABLES;
# 데이터 삽입
INSERT INTO butter (part, lyric)
VALUES (1, "Smooth like butter"),
	   (2, "Like a criminal undercover"),
       (3, "Gon' pop like trouble"),
       (4, "Breakin' into your heart like that"),
       (5, "Cool shade stunner");
# 테이블 전체 데이터 보기
SELECT *
FROM butter;

# lyric의 내용에서 i의 위치 출력, 모든 데이터 출력
SELECT part,
	   LOCATE("i", lyric)
FROM butter;

# lyric의 세 번째 문자부터 끝까지 출력
SELECT part,
	   SUBSTRING(lyric, 3)
FROM butter;

# 만약 입력한 숫자가 문자열의 길이보다 크다면?
SELECT part,
	   SUBSTRING(lyric, 100)
FROM butter;

# lyric의 마지막 세 글자, 앞에서 세 글자 가져오기
# 꼭 기억 !!!
SELECT part,
	   RIGHT(lyric, 3),
       LEFT(lyric, 3)
FROM butter;

# 대문자, 소문자
SELECT part,
	   UPPER(lyric),
       LOWER(lyric)
FROM butter;

# 길이 구하기
SELECT part,
	   LENGTH(lyric)
FROM butter;

# 문자열 합치기
SELECT part,
	   CONCAT(LEFT(lyric, 3), right(lyric, 3))
FROM butter;

# 문자 대체하기
SELECT part,
	   REPLACE(lyric, " ", "_")
FROM butter;

# 숫자형 데이터 관련 함수
# 절댓값
SELECT ABS(-5);
# 올림
SELECT CEILING(154.9);
# 내림
SELECT FLOOR(153.2);
# 반올림
SELECT ROUND(154.75, 1);
# 버림
SELECT TRUNCATE(154.75, 1);
# 제곱
SELECT POWER(2, 4);
# 나머지
SELECT MOD(15, 7);
/*
< 예제 >
*/
# mypokemon 테이블 조회
USE pokemon;
SELECT *
FROM mypokemon;

# 전체 행 개수 구하기
SELECT count(*)
FROM mypokemon;

# 새로운 속성 추가
ALTER TABLE mypokemon ADD friendship FLOAT;

# 테이블 조회
SELECT *
FROM mypokemon
ORDER BY number;

# 새로운 데이터 추가하기
INSERT INTO mypokemon (number, name, height, weight, friendship)
VALUES (125, "electabuzz", 1.1, 30, -10.67),
	   (137, "porygon", 0.8, 36.5, -0.245),
       (153, "bayleef", 1.2, 15.8, 9.756),
       (172, "pichu", 0.3, 2, 872.1),
       (470, "leafeon", 1, 25.5, 3.42);
       
# friendship 컬럼에 값 넣기
# update 한번에 하는 방법이 없을까? CASE WHEN 사용 !!
/*
UPDATE mypokemon
SET friendship = CASE number
					WHEN 10 THEN -1.455
                    WHEN 25 THEN 124.78
                    WHEN 26 THEN 30.289
                    WHEN 133 THEN -10.67
                    WHEN 152 THEN 15.988
				 END
WHERE number in (10, 25, 26, 133, 152);
*/

UPDATE mypokemon
SET friendship = -1.455
WHERE number = 10;

UPDATE mypokemon
SET friendship = 124.78
WHERE number = 25;

UPDATE mypokemon
SET friendship = 30.289
WHERE number = 26;

UPDATE mypokemon
SET friendship = 15.988
WHERE number = 133;

UPDATE mypokemon
SET friendship = 67.164
WHERE number = 152;

# mypokemon 조회
SELECT *
FROM mypokemon
ORDER BY number;

# 절댓값
SELECT name, friendship, round(ABS(friendship), 3)
FROM mypokemon;

# 정수로 올림, 내림
SELECT name, friendship, CEILING(friendship), FLOOR(friendship)
FROM mypokemon;

# 원하는 곳까지 반올림, 버림
SELECT name,
	   friendship,
       ROUND(friendship, 1),
       TRUNCATE(friendship, 1)
FROM mypokemon;

# number 제곱하기
SELECT name, 
	   number,
       POWER(number, 2)
FROM mypokemon;

# 나머지 구하기
SELECT name,
	   number, MOD(number, 2)
FROM mypokemon;

# 날짜형 데이터 관련 함수
# 현재 날짜와 시간, 현재 날짜, 현재 시간
# 주의 : 매개변수 (입력 값이 필요없음.)
SELECT NOW(), CURRENT_DATE(), CURRENT_TIME();
# 연도, 월, 영문 월
SELECT NOW(), YEAR(NOW()), MONTH(NOW()), MONTHNAME(NOW());
# 영어 요일, 일, 숫자 요일, 해당 연도에 몇 주?
SELECT NOW(), DAYNAME(NOW()), DAYOFMONTH(NOW()), DAYOFWEEK(NOW()), WEEK(NOW());
# 시간, 분, 초
SELECT NOW(), HOUR(NOW()), MINUTE(NOW()), SECOND(NOW());
# 날짜/시간의 형식을 형식에 맞춰서 출력
SELECT DATE_FORMAT(NOW(), "%Y년 %m월 %d일 %H시 %i분 %s초") AS formatted_date;
SELECT DATE_FORMAT(NOW(), "%y년 %m월 %d일 %h시 %i분 %s초") AS formatted_date;
# 두 날짜의 차이, 두 시간의 차이
SELECT DATEDIFF("1999-11-28 00:00:00", NOW()) AS DATE_DIFF,
       TIMEDIFF("1999-11-28 00:00:00", NOW()) AS TIME_DIFF;