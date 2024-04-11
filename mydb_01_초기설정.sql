show databases;

# table을 보기 전에 보고 싶은 테이블의 db를 지정해야 한다.
use db_surin;
# 해당 db에 어떤 table이 있는지 확인하기
show tables;

# 원하는 table에 데이터 넣기
insert into idol(idx, name, age)
values(1, "jenny", 26);

# 값이 잘 들어 갔는지 확인
select *
from idol;

# 다른 값 또 추가하기
insert into idol(idx, name, age)
values(2, "Hani", 30);

# 값 들어갔는지 확인
select *
from idol;