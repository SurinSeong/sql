# 데이터베이스 다루기 : alter, drop
## 실습 ##
/*
MISSION (1)
‘포켓몬’ (pokemon) 데이터베이스 안에 있는 ‘나의포켓몬’ (mypokemon) 테이블과 ‘나의새로운
포켓몬’ (mynewpokemon) 테이블이 아래와 같이 될 수 있게 변경해주세요.
※ 테이블을 새로 생성하지 말고, 기존의 테이블에서 변경해주세요!
*/
# pokemon 데이터베이스 사용
USE pokemon;

# mypokemon -> myoldpokemon으로 바꾸기
ALTER TABLE mypokemon RENAME myoldpokemon;
SELECT * FROM myoldpokemon;

# myoldpokemon의 name을 eng_nm으로 바꾸기
ALTER TABLE myoldpokemon CHANGE name eng_nm VARCHAR(20);
SELECT * FROM myoldpokemon;

# mynewpokemon의 name을 kor_nm으로 바꾸기
ALTER TABLE mynewpokemon CHANGE name kor_nm VARCHAR(20);
SELECT * FROM mynewpokemon;

/*
MISSION (2)
‘pokemon’ 데이터베이스 안에 있는 ‘myoldpokemon’ 테이블은 값만 지우고,
‘mynewpokemon’ 테이블은 전부 지워주세요.
*/
# myoldpokemon 테이블의 값만 지우기
DELETE FROM myoldpokemon;
SELECT * FROM myoldpokemon;

# mynewpokemon 테이블 자체를 지우기
DROP TABLE IF EXISTS mynewpokemon;
SHOW TABLES;
