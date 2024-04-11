REM   Script: 0411_DML_SELECT
REM   0411 오라클 수업

CREATE TABLE employees (employee_id NUMBER, 
    					first_name VARCHAR2(50), 
    					last_name VARCHAR2(50), 
    					salary NUMBER );

INSERT INTO employees VALUES (1, 'John', 'Doe', 5000);

INSERT INTO employees VALUES (2, 'Jane', 'Smith', 6000 );

INSERT INTO employees VALUES (3, 'Michael', 'Johnson', 7500 );

SELECT first_name, 
	   last_name, 
	   salary * 12 AS annual_salary 
FROM employees;

CREATE TABLE employees (employee_id NUMBER, 
    					first_name VARCHAR2(50), 
    					last_name VARCHAR2(50), 
    					salary NUMBER );

INSERT INTO employees VALUES (1, 'John', 'Doe', 5000);

INSERT INTO employees VALUES (2, 'Jane', 'Smith', 6000 );

INSERT INTO employees VALUES (3, 'Michael', 'Johnson', 7500 );

SELECT first_name, 
	   last_name, 
	   salary * 12 AS annual_salary 
FROM employees;

SELECT e.first_name, e.last_name 
FROM employees e;

DROP TABLE employees;

CREATE TABLE employees (employee_id NUMBER, 
    					first_name VARCHAR2(50), 
    					last_name VARCHAR2(50), 
    					salary NUMBER );

INSERT INTO employees VALUES (1, 'John', 'Doe', 5000);

INSERT INTO employees VALUES (2, 'Jane', 'Smith', 6000 );

INSERT INTO employees VALUES (3, 'Michael', 'Johnson', 7500 );

SELECT first_name, 
	   last_name, 
	   salary * 12 AS annual_salary 
FROM employees;

SELECT e.first_name, e.last_name 
FROM employees e;

SELECT DISTINCT first_name 
FROM employees;

INSERT INTO employees VALUES (4, "Michael", "Johnson", 103);

INSERT INTO employees VALUES (4, 'Michael', 'Johnson', 103);

SELECT first_name, 
	   last_name, 
	   salary * 12 AS annual_salary 
FROM employees;

SELECT DISTINCT first_name 
FROM employees;

CREATE TABLE pokemon ( 
    					pm_id INT PRIMARY KEY NOY NULL, 
    					name VARCHAR(20) NOT NULL, 
    					attr VARCHAR(20) DEFAULT 'normal' 
					 );

CREATE TABLE pokemon ( 
    					pm_id INT PRIMARY KEY NOT NULL, 
    					name VARCHAR(20) NOT NULL, 
    					attr VARCHAR(20) DEFAULT 'normal' 
					 );

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'grass');

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'grass');

INSERT INTO pokemon VALUES (3, 'Venusaur', 'grass');

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire');

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire');

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric');

SELECT pm_id AS 번호, name AS 이름, attr AS 속성 
FROM pokemon;

SELECT * FROM pokemon;

SELECT DISTINCT attr FROM pokemon;

SELECT 10 + 5 AS addition, 
	   15 - 7 AS subtraction, 
	   6 * 3 AS multiplication, 
	   20 / 4 AS division, 
	   17 % 5 AS modulo 
FROM dual;

SELECT (10 + 5) AS addition, 
	   (15 - 7) AS subtraction, 
	   (6 * 3) AS multiplication, 
	   (20 / 4) AS division, 
	   (17 % 5) AS modulo 
FROM dual;

SELECT (10 + 5) AS addition 
FROM dual;

SELECT 10 + 5 AS addition, 
	   15 - 7 AS subtraction, 
	   6 * 3 AS multiplication, 
	   20 / 4 AS division, 
	   MOD(17, 5) AS modulo 
FROM dual;

CREATE TABLE pokemon ( 
						pm_id INT PRIMARY KEY NOT NULL, 
						name VARCHAR(20) NOT NULL, 
						attr VARCHAR(20) DEFAULT 'normal', 
						weight INT 
					  );

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'grass', 30);

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'grass', 50);

INSERT INTO pokemon VALUES (3, 'Venusaur', 'grass', 150);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire', 200);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15);

DROP TABLE pokemon;

SELECT * 
FROM pokemon;

CREATE TABLE pokemon ( 
						pm_id INT PRIMARY KEY NOT NULL, 
						name VARCHAR(20) NOT NULL, 
						attr VARCHAR(20) DEFAULT 'normal', 
						weight INT 
					  );

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'grass', 30);

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'grass', 50);

INSERT INTO pokemon VALUES (3, 'Venusaur', 'grass', 150);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire', 200);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15);

SELECT * 
FROM pokemon;

SELECT weight * 2.2 
FROM pokemon;

DROP TABLE pokemon;

CREATE TABLE pokemon ( 
						pm_id INT PRIMARY KEY NOT NULL, 
						name VARCHAR(20) NOT NULL, 
						attr VARCHAR(20) DEFAULT 'normal', 
    					weight INT 
						height INT 
					  );

CREATE TABLE pokemon ( 
						pm_id INT PRIMARY KEY NOT NULL, 
						name VARCHAR(20) NOT NULL, 
						attr VARCHAR(20) DEFAULT 'normal', 
    					weight INT, 
						height INT 
					  );

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'grass', 30, 50);

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'grass', 50, 90);

INSERT INTO pokemon VALUES (3, 'Venusaur', 'grass', 150, 250);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80, 80);

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire', 200, 120);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15, 55);

SELECT '포켓몬 번호 : ' || pm_id 번호, 
	   '이름 : ' || name 이름, 
	   '속성 : ' || attr 속성, 
	   '몸무게 : ' || weight 몸무게, 
	   '키 : ' || height 키 
FROM pokemon;

SELECT LOWER('SQL Expert') 
FROM dual;

SELECT UPPER('SQL Expert') 
FROM dual;

SELECT CONCAT('RDBMS', 'SQL') 
FROM dual;

SELECT 'RDBMS' || 'SQL' 
FROM dual;

SELECT CONCAT(UPPER('sqld'), LOWER('Completed!')) 
FROM dual;

SELECT CONCAT(UPPER('sqld '), LOWER('Completed!')) 
FROM dual;

SELECT ASCII('A') 
FROM dual;

SELECT ASCII('S') + ASCII('Q') + ASCII('L') + ASCII('D') 
FROM dual;

SELECT CHR(65) 
FROM dual;

SELECT CHR(70) || CHR(105) || CHR(71) || CHR(104) || CHR(84) || CHR(105) || CHR(78) || CHR(103) 
FROM dual;

SELECT SUBSTR('SQL Expert', 5, 3) 
FROM dual;

SELECT SUBSTR('SQL is a  standard language for accessing and manipulating databases.', 19, 8) 
FROM dual;

SELECT SUBSTR('SQL is a standard language for accessing and manipulating databases.', 19, 8) 
FROM dual;

SELECT SUBSTR('SQL is a standard language for accessing and manipulating databases.', 19) 
FROM dual;

SELECT LENGTH('SQL Expert') 
FROM dual;

SELECT LENGTH('SQL is a standard language for accessing and manipulating databases.') 
FROM dual;

SELECT LTRIM('xxxYYZZxYZ', 'x') 
FROM dual;

SELECT LTRIM('   YYZZxYZ') 
FROM dual;

SELECT LTRIM('xxxYzzYZZxYZXzz', 'z') 
FROM dual;

SELECT RTRIM('xxxYzzYZZxYZXzz', 'z') 
FROM dual;

SELECT TRIM('x' FROM 'xxYYZZxYZxx') 
FROM dual;

SELECT TRIM('x' FROM 'xxYYZZxYZxx'), 
       TRIM(leading 'x' FROM 'xxYYZZxYZxx'), 
       TRIM(trailing 'x' FROM 'xxYYZZxYZxx') 
FROM dual;

SELECT TRIM('-' FROM '----SQL Tutorial----') 
FROM dual;

SELECT LPAD('ABC', 8, 'Z') 
FROM dual;

SELECT RPAD('ABC', 8, 'Z') 
FROM dual;

SELECT LPAD('ABC', 8) 
FROM dual;

SELECT RPAD('SQL', 8, 15) 
FROM dual;

SELECT ABS(-15) 
FROM dual;

SELECT SIGN(20) 
FROM dual;

SELECT SIGN(-4) 
FROM dual;

SELECT MOD(7, 3) 
FROM dual;

SELECT CEIL(38.567) 
FROM dual;

SELECT FLOOR(38.567) 
FROM dual;

SELECT ROUND(38.567, 2) 
FROM dual;

SELECT TRUNC(38.567, 2) 
FROM dual;

SELECT SIN(1.5708) 
FROM dual;

SELECT EXP(2), POWER(2, 3), SQRT(4), LOG(10, 100), LN(10) 
FROM dual;

SELECT SYSDATE 
FROM dual;

SELECT EXTRACT (YEAR FROM DATE '2023-10-10') 
FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'YYYY.MON, DAY') 
FROM dual;

SELECT TO_NUMBER('888') + TO_NUMBER('111') 
FROM dual;

SELECT '2' + 1 
FROM dual;

CREATE TABLE employees (employee_id NUMBER, 
    					first_name VARCHAR2(50), 
    					last_name VARCHAR2(50), 
    					salary NUMBER );

INSERT INTO employees VALUES (1, 'John', 'Doe', 5000);

INSERT INTO employees VALUES (2, 'Jane', 'Smith', 6000 );

INSERT INTO employees VALUES (3, 'Michael', 'Johnson', 7500 );

INSERT INTO employees VALUES (4, 'Michael', 'Johnson', 103);

SELECT first_name, 
	   last_name, 
	   salary * 12 AS annual_salary 
FROM employees;

SELECT e.first_name, e.last_name 
FROM employees e;

SELECT DISTINCT first_name 
FROM employees;

CREATE TABLE pokemon ( 
    					pm_id INT PRIMARY KEY NOT NULL, 
    					name VARCHAR(20) NOT NULL, 
    					attr VARCHAR(20) DEFAULT 'normal' 
					 );

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'grass');

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'grass');

INSERT INTO pokemon VALUES (3, 'Venusaur', 'grass');

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire');

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire');

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric');

SELECT pm_id AS 번호, name AS 이름, attr AS 속성 
FROM pokemon;

SELECT * FROM pokemon;

SELECT DISTINCT attr FROM pokemon;

SELECT (10 + 5) AS addition 
FROM dual;

SELECT 10 + 5 AS addition, 
	   15 - 7 AS subtraction, 
	   6 * 3 AS multiplication, 
	   20 / 4 AS division, 
	   MOD(17, 5) AS modulo 
FROM dual;

CREATE TABLE pokemon ( 
						pm_id INT PRIMARY KEY NOT NULL, 
						name VARCHAR(20) NOT NULL, 
						attr VARCHAR(20) DEFAULT 'normal', 
						weight INT 
					  );

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'grass', 30);

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'grass', 50);

INSERT INTO pokemon VALUES (3, 'Venusaur', 'grass', 150);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire', 200);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15);

SELECT * 
FROM pokemon;

SELECT weight * 2.2 
FROM pokemon;

DROP TABLE pokemon;

CREATE TABLE pokemon ( 
						pm_id INT PRIMARY KEY NOT NULL, 
						name VARCHAR(20) NOT NULL, 
						attr VARCHAR(20) DEFAULT 'normal', 
    					weight INT, 
						height INT 
					  );

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'grass', 30, 50);

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'grass', 50, 90);

INSERT INTO pokemon VALUES (3, 'Venusaur', 'grass', 150, 250);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80, 80);

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire', 200, 120);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15, 55);

SELECT '포켓몬 번호 : ' || pm_id 번호, 
	   '이름 : ' || name 이름, 
	   '속성 : ' || attr 속성, 
	   '몸무게 : ' || weight 몸무게, 
	   '키 : ' || height 키 
FROM pokemon;

SELECT LOWER('SQL Expert') 
FROM dual;

SELECT UPPER('SQL Expert') 
FROM dual;

SELECT CONCAT('RDBMS', 'SQL') 
FROM dual;

SELECT 'RDBMS' || 'SQL' 
FROM dual;

SELECT CONCAT(UPPER('sqld '), LOWER('Completed!')) 
FROM dual;

SELECT ASCII('A') 
FROM dual;

SELECT ASCII('S') + ASCII('Q') + ASCII('L') + ASCII('D') 
FROM dual;

SELECT CHR(65) 
FROM dual;

SELECT CHR(70) || CHR(105) || CHR(71) || CHR(104) || CHR(84) || CHR(105) || CHR(78) || CHR(103) 
FROM dual;

SELECT SUBSTR('SQL Expert', 5, 3) 
FROM dual;

SELECT SUBSTR('SQL is a standard language for accessing and manipulating databases.', 19, 8) 
FROM dual;

SELECT SUBSTR('SQL is a standard language for accessing and manipulating databases.', 19) 
FROM dual;

SELECT LENGTH('SQL Expert') 
FROM dual;

SELECT LENGTH('SQL is a standard language for accessing and manipulating databases.') 
FROM dual;

SELECT LTRIM('xxxYYZZxYZ', 'x') 
FROM dual;

SELECT LTRIM('   YYZZxYZ') 
FROM dual;

SELECT RTRIM('xxxYzzYZZxYZXzz', 'z') 
FROM dual;

SELECT TRIM('x' FROM 'xxYYZZxYZxx'), 
       TRIM(leading 'x' FROM 'xxYYZZxYZxx'), 
       TRIM(trailing 'x' FROM 'xxYYZZxYZxx') 
FROM dual;

SELECT TRIM('-' FROM '----SQL Tutorial----') 
FROM dual;

SELECT LPAD('ABC', 8, 'Z') 
FROM dual;

SELECT RPAD('ABC', 8, 'Z') 
FROM dual;

SELECT LPAD('ABC', 8) 
FROM dual;

SELECT RPAD('SQL', 8, 15) 
FROM dual;

SELECT ABS(-15) 
FROM dual;

SELECT SIGN(20) 
FROM dual;

SELECT SIGN(-4) 
FROM dual;

SELECT MOD(7, 3) 
FROM dual;

SELECT CEIL(38.567) 
FROM dual;

SELECT FLOOR(38.567) 
FROM dual;

SELECT ROUND(38.567, 2) 
FROM dual;

SELECT TRUNC(38.567, 2) 
FROM dual;

SELECT SIN(1.5708) 
FROM dual;

SELECT EXP(2), POWER(2, 3), SQRT(4), LOG(10, 100), LN(10) 
FROM dual;

SELECT SYSDATE 
FROM dual;

SELECT EXTRACT (YEAR FROM DATE '2023-10-10') 
FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'YYYY. MON, DAY') 
FROM dual;

SELECT TO_NUMBER('888') + TO_NUMBER('111') 
FROM dual;

SELECT '2' + 1 
FROM dual;

SELECT NVL(NULL, 'NVL-OK') 
FROM dual;

DROP TABLE pokemon;

CREATE TABLE pokemon ( 
    					pm_id NUMBER PRIMARY KEY NOT NULL, 
    					name VARCHAR(20) NOT NULL, 
    					attr VARCHAR(20), 
    					weight NUMBER 
					 );

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (25, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemon (pm_id, name) VALUES (54, 'Psyduck');

INSERT INTO pokemon (pm_id, name, attr) VALUES (76, 'Golem', 'Rock');

CREATE TABLE employees (employee_id NUMBER, 
    					first_name VARCHAR2(50), 
    					last_name VARCHAR2(50), 
    					salary NUMBER );

INSERT INTO employees VALUES (1, 'John', 'Doe', 5000);

INSERT INTO employees VALUES (2, 'Jane', 'Smith', 6000 );

INSERT INTO employees VALUES (3, 'Michael', 'Johnson', 7500 );

INSERT INTO employees VALUES (4, 'Michael', 'Johnson', 103);

SELECT first_name, 
	   last_name, 
	   salary * 12 AS annual_salary 
FROM employees;

SELECT e.first_name, e.last_name 
FROM employees e;

SELECT DISTINCT first_name 
FROM employees;

CREATE TABLE pokemon ( 
    					pm_id INT PRIMARY KEY NOT NULL, 
    					name VARCHAR(20) NOT NULL, 
    					attr VARCHAR(20) DEFAULT 'normal' 
					 );

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'grass');

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'grass');

INSERT INTO pokemon VALUES (3, 'Venusaur', 'grass');

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire');

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire');

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric');

SELECT pm_id AS 번호, name AS 이름, attr AS 속성 
FROM pokemon;

SELECT * FROM pokemon;

SELECT DISTINCT attr FROM pokemon;

SELECT (10 + 5) AS addition 
FROM dual;

SELECT 10 + 5 AS addition, 
	   15 - 7 AS subtraction, 
	   6 * 3 AS multiplication, 
	   20 / 4 AS division, 
	   MOD(17, 5) AS modulo 
FROM dual;

CREATE TABLE pokemon ( 
						pm_id INT PRIMARY KEY NOT NULL, 
						name VARCHAR(20) NOT NULL, 
						attr VARCHAR(20) DEFAULT 'normal', 
						weight INT 
					  );

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'grass', 30);

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'grass', 50);

INSERT INTO pokemon VALUES (3, 'Venusaur', 'grass', 150);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire', 200);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15);

SELECT * 
FROM pokemon;

SELECT weight * 2.2 
FROM pokemon;

DROP TABLE pokemon;

CREATE TABLE pokemon ( 
						pm_id INT PRIMARY KEY NOT NULL, 
						name VARCHAR(20) NOT NULL, 
						attr VARCHAR(20) DEFAULT 'normal', 
    					weight INT, 
						height INT 
					  );

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'grass', 30, 50);

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'grass', 50, 90);

INSERT INTO pokemon VALUES (3, 'Venusaur', 'grass', 150, 250);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80, 80);

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire', 200, 120);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15, 55);

SELECT '포켓몬 번호 : ' || pm_id 번호, 
	   '이름 : ' || name 이름, 
	   '속성 : ' || attr 속성, 
	   '몸무게 : ' || weight 몸무게, 
	   '키 : ' || height 키 
FROM pokemon;

SELECT LOWER('SQL Expert') 
FROM dual;

SELECT UPPER('SQL Expert') 
FROM dual;

SELECT CONCAT('RDBMS', 'SQL') 
FROM dual;

SELECT 'RDBMS' || 'SQL' 
FROM dual;

SELECT CONCAT(UPPER('sqld '), LOWER('Completed!')) 
FROM dual;

SELECT ASCII('A') 
FROM dual;

SELECT ASCII('S') + ASCII('Q') + ASCII('L') + ASCII('D') 
FROM dual;

SELECT CHR(65) 
FROM dual;

SELECT CHR(70) || CHR(105) || CHR(71) || CHR(104) || CHR(84) || CHR(105) || CHR(78) || CHR(103) 
FROM dual;

SELECT SUBSTR('SQL Expert', 5, 3) 
FROM dual;

SELECT SUBSTR('SQL is a standard language for accessing and manipulating databases.', 19, 8) 
FROM dual;

SELECT SUBSTR('SQL is a standard language for accessing and manipulating databases.', 19) 
FROM dual;

SELECT LENGTH('SQL Expert') 
FROM dual;

SELECT LENGTH('SQL is a standard language for accessing and manipulating databases.') 
FROM dual;

SELECT LTRIM('xxxYYZZxYZ', 'x') 
FROM dual;

SELECT LTRIM('   YYZZxYZ') 
FROM dual;

SELECT RTRIM('xxxYzzYZZxYZXzz', 'z') 
FROM dual;

SELECT TRIM('x' FROM 'xxYYZZxYZxx'), 
       TRIM(leading 'x' FROM 'xxYYZZxYZxx'), 
       TRIM(trailing 'x' FROM 'xxYYZZxYZxx') 
FROM dual;

SELECT TRIM('-' FROM '----SQL Tutorial----') 
FROM dual;

SELECT LPAD('ABC', 8, 'Z') 
FROM dual;

SELECT RPAD('ABC', 8, 'Z') 
FROM dual;

SELECT LPAD('ABC', 8) 
FROM dual;

SELECT RPAD('SQL', 8, 15) 
FROM dual;

SELECT ABS(-15) 
FROM dual;

SELECT SIGN(20) 
FROM dual;

SELECT SIGN(-4) 
FROM dual;

SELECT MOD(7, 3) 
FROM dual;

SELECT CEIL(38.567) 
FROM dual;

SELECT FLOOR(38.567) 
FROM dual;

SELECT ROUND(38.567, 2) 
FROM dual;

SELECT TRUNC(38.567, 2) 
FROM dual;

SELECT SIN(1.5708) 
FROM dual;

SELECT EXP(2), POWER(2, 3), SQRT(4), LOG(10, 100), LN(10) 
FROM dual;

SELECT SYSDATE 
FROM dual;

SELECT EXTRACT (YEAR FROM DATE '2023-10-10') 
FROM DUAL;

SELECT TO_CHAR(SYSDATE, 'YYYY. MON, DAY') 
FROM dual;

SELECT TO_NUMBER('888') + TO_NUMBER('111') 
FROM dual;

SELECT '2' + 1 
FROM dual;

SELECT NVL(NULL, 'NVL-OK') 
FROM dual;

CREATE TABLE pokemon ( 
    					pm_id NUMBER PRIMARY KEY NOT NULL, 
    					name VARCHAR(20) NOT NULL, 
    					attr VARCHAR(20), 
    					weight NUMBER 
					 );

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (25, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemon (pm_id, name) VALUES (54, 'Psyduck');

INSERT INTO pokemon (pm_id, name, attr) VALUES (76, 'Golem', 'Rock');

SELECT pm_id, name, NVL(attr, 'Unknown'), NVL(weight, 999) 
FROM pokemon;

DROP TABLE pokemon;

CREATE TABLE pokemon ( 
    					pm_id NUMBER PRIMARY KEY NOT NULL, 
    					name VARCHAR(20) NOT NULL, 
    					attr VARCHAR(20), 
    					weight NUMBER 
					 );

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (25, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemon (pm_id, name) VALUES (54, 'Psyduck');

INSERT INTO pokemon (pm_id, name, attr) VALUES (76, 'Golem', 'Rock');

SELECT pm_id, name, NVL(attr, 'Unknown'), NVL(weight, 999) 
FROM pokemon;

SELECT * 
FROM emp;

INSERT INTO pokemon (pm_id, name, weight) 
VALUES (86, 'Seel', 85);

SELECT name, NULLIF(attr, 'normal') 
FROM pokemon;

SELECT pm_id, name, COALESCE(attr, weight) 
FROM pokemon 
WHERE pm_id >= 30;

ALTER TABLE pokemon MODIFY weight VARCHER(20);

drop table pokemon;

CREATE TABLE pokemon ( 
    					pm_id NUMBER PRIMARY KEY NOT NULL, 
    					name VARCHAR(20) NOT NULL, 
    					attr VARCHAR(20), 
    					weight VARCHER(20) 
					 );

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', '30');

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', '80');

INSERT INTO pokemon VALUES (25, 'Bulbasaur', 'Grass', '30');

INSERT INTO pokemon (pm_id, name) VALUES (54, 'Psyduck');

INSERT INTO pokemon (pm_id, name, attr) VALUES (76, 'Golem', 'Rock');

SELECT pm_id, name, COALESCE(attr, weight) 
FROM pokemon 
WHERE pm_id >= 30;

CREATE TABLE pokemon ( 
    					pm_id NUMBER PRIMARY KEY NOT NULL, 
    					name VARCHAR(20) NOT NULL, 
    					attr VARCHAR(20), 
    					weight VARCHAR(20) 
					 );

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', '30');

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', '80');

INSERT INTO pokemon VALUES (25, 'Bulbasaur', 'Grass', '30');

INSERT INTO pokemon (pm_id, name) VALUES (54, 'Psyduck');

INSERT INTO pokemon (pm_id, name, attr) VALUES (76, 'Golem', 'Rock');

SELECT pm_id, name, COALESCE(attr, weight) 
FROM pokemon 
WHERE pm_id >= 30;

DROP table pokemon;

CREATE TABLE pokemon ( 
    					pm_id NUMBER PRIMARY KEY NOT NULL, 
    					name VARCHAR2(20) NOT NULL, 
    					attr VARCHAR2(20) DEFAULT 'normal', 
    					weight NUMBER 
					 );

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'Grass', 50);

INSERT INTO pokemon VALUES (3, 'Venusaur', 'Grass', 150);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire', 200);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15);

SELECT name, 
	   (CASE attr 
			WHEN 'Grass' THEN '풀 속성' 
			WHEN 'Fire' THEN '화염 속성' 
			WHEN 'Electric' THEN '전기 속성' 
			ELSE '노말 속성' 
    	END) AS 속성 
FROM pokemon;

SELECT name, 
	   (CASE attr 
			WHEN 'Grass' THEN '풀' 
			WHEN 'Fire' THEN '화염' 
			WHEN 'Electric' THEN '전기' 
			ELSE '노말 속성' 
    	END) AS 속성 
FROM pokemon;

CREATE TABLE pokemon ( 
						pm_id NUMBER PRIMARY KEY NOT NULL, 
						name VARCHAR2(20) NOT NULL, 
						attr VARCHAR2(20) DEFAULT 'normal', 
						weight NUMBER 
						);

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'Grass', 50);

INSERT INTO pokemon VALUES (3, 'Venusaur', 'Grass', 150);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire', 200);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15);

CREATE TABLE pokemon ( 
						pm_id NUMBER PRIMARY KEY NOT NULL, 
						name VARCHAR2(20) NOT NULL, 
						attr VARCHAR2(20) DEFAULT 'normal', 
						weight NUMBER 
						);

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'Grass', 50);

INSERT INTO pokemon VALUES (3, 'Venusaur', 'Grass', 150);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

DROP TABLE pokemon;

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire', 200);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15);

SELECT name, 
		CASE WHEN weight <= 30 THEN '소형' 
			 WHEN weight <= 100 THEN '중형' 
			 ELSE '대형' 
		END 크기 
FROM pokemon;

DROP table pokemon;

CREATE TABLE pokemon ( 
    					pm_id NUMBER PRIMARY KEY NOT NULL, 
    					name VARCHAR2(20) NOT NULL, 
    					attr VARCHAR2(20) DEFAULT 'normal', 
    					weight NUMBER 
						);

INSERT INTO pokemon VALUES (1, 'Bulbasaur', 'Grass', 30);

INSERT INTO pokemon VALUES (2, 'Ivysaur', 'Grass', 50);

INSERT INTO pokemon VALUES (3, 'Venusaur', 'Grass', 150);

INSERT INTO pokemon VALUES (4, 'Charmander', 'Fire', 80);

INSERT INTO pokemon VALUES (5, 'Charmeleon', 'Fire', 200);

INSERT INTO pokemon VALUES (25, 'Pikachu', 'Electric', 15);

SELECT name, 
		DECODE(attr, 'Grass', '풀', 'Fire', '화염', 'Electric', '전기', '노말') 
FROM pokemon;

SELECT name, 
		DECODE(attr, 'Grass', '풀', 'Fire', '화염', 'Electric', '전기', '노말') 속성 
FROM pokemon;

