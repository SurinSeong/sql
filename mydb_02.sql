# sql 101
# 주석 처리

# db 만들기
create database pokemon;

# db 확인
show databases;

# db 사용하기
# 지정하지 않아도 사용할 수 있지만, 사용할 때마다 db명을 입력해주어야 함.
# db명.table명
use pokemon;

# table 생성, 컬럼 생성
# 반드시 데이터 타입 지정
create table idol(
				  name VARCHAR(20),
				  age INT,
				  group_name VARCHAR(50)
				 );
                 
# 어떤 table이 있는지 확인
show tables;

# 테이블 이름 변경
alter table idol rename superstar;

show tables;

# 속성 추가
# add column : 새로운 컬럼 추가 (** 항상 타입 지정 **)
alter table superstar add column how_long int;
alter table superstar add column height int;
alter table superstar add column weight int;

# 속성 정보 수정
# modify column : 기존 컬럼의 데이터 타입 변경
alter table superstar modify column height float;
alter table superstar modify column weight float;

# 원하는 테이블의 데이터 보기
select *
from superstar;

# 컬럼명을 바꾸기
# change column : 기존 컬럼의 이름과 데이터 타입 변경
alter table superstar change column weight gender varchar(50);
select *
from superstar;

use pokemon;

# 테이블 삭제
drop table superstar;

show tables;
drop table friendpokemon;
drop table mypokemon;

# 삭제되었는지 확인하기
show tables;

# db 삭제
show databases;
drop database db_surin;
# 조건을 넣어서 삭제하기
# 만약 존재한다면 삭제하기
# 존재하지 않는 것을 'if exists'없이 삭제하려고 하면 에러가 난다.
drop database if exists pokemon;

# 테이블 값 삽입 (row 단위로)
# 데이터베이스 만들기
create database pokemon;
# 원하는 데이터베이스 사용
use pokemon;
# 테이블 만들기
create table superstar (name VARCHAR(20),
						age INT,
                        group_name VARCHAR(50));
                        
# 새로운 데이터 삽입
insert into superstar (name, age, group_name)
values ("Jenny", 27, "BlackPink");

# 삽입 확인
select * from superstar;

# 새로운 여러 데이터 삽입
insert into superstar (name, age, group_name)
values ("Jisoo", 27, "BlackPink"),
	   ("Lisa", 26, "BlackPink"),
       ("Daniel", 18, "NewJeans"),
       ("Miyeon", 27, "I-dle");
       
# 데이터 확인
select * from superstar;

# 테이블 값 삭제
# where 절에 삭제하고 싶은 조건을 넣어주어야 함.
delete from superstar
where group_name = "NewJeans";

# 데이터 확인
select * from superstar;

# 데이터 수정
update superstar
set age = 26
where name = "Jenny";

select * from superstar;

# 전체 삭제
# 모든 데이터가 삭제됨. (테이블 자체가 지워지지 않음.)
delete from superstar;
select * from superstar;

# superstar 테이블 삭제
drop table superstar;