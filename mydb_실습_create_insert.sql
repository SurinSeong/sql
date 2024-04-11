## 실습 ##
# pokemon db 사용하기
USE pokemon;

/*
# MISSION (1)
‘포켓몬’ (pokemon) 데이터베이스와 ‘나의포켓몬’ (mypokemon) 테이블을 만들고,
캐터피, 피카츄, 이브이의 포켓몬번호, 영문이름, 타입 데이터를 넣어주세요.
*/
# 테이블 만들기
CREATE TABLE mypokemon (
						number INT,
						name VARCHAR(20),
                        type VARCHAR(10)
                        );
# 데이터 넣기
INSERT INTO mypokemon (number, name, type)
VALUES (10, "caterpie", "bug"),
	   (25, "pikachu", "electric"),
       (133, "eevee", "normal");

# 테이블 확인
SELECT *
FROM mypokemon;

/*
MISSION (2)
MISSION (1)에서 만든‘포켓몬’ (pokemon) 데이터베이스에
‘나의새로운포켓몬’(mynewpokemon)테이블을 만들고,
포니타, 메타몽, 뮤의포켓몬번호, 이름, 타입데이터를 넣어주세요.
*/
# 새로운 테이블 만들기
CREATE TABLE mynewpokemon (
							number INT,
                            name VARCHAR(20),
                            type VARCHAR(10)
							);
# 여러 데이터 삽입
INSERT INTO mynewpokemon (number, name, type)
VALUES (77, "포니타", "불꽃"),
	   (132, "메타몽", "노말"),
       (151, "뮤", "에스퍼");

# 테이블 확인
SELECT *
FROM mynewpokemon;