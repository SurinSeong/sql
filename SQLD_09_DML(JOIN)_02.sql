REM   Script: SQLD_09_DML(JOIN)_01
REM   Inner Join까지

CREATE TABLE employees ( 
employee_id NUMBER PRIMARY KEY, 
last_name VARCHAR2(50), 
department_id NUMBER 
);

CREATE TABLE departments ( 
department_id NUMBER PRIMARY KEY, 
department_name VARCHAR2(50) 
);

INSERT INTO employees (employee_id, last_name, department_id) VALUES (1, 'Smith', 10);

INSERT INTO employees (employee_id, last_name, department_id) VALUES (2, 'Johnson', 20);

INSERT INTO employees (employee_id, last_name, department_id) VALUES (3, 'Williams', 10);

INSERT INTO employees (employee_id, last_name, department_id) VALUES (4, 'Jones', 30);

INSERT INTO employees (employee_id, last_name, department_id) VALUES (5, 'Brown', 30);

INSERT INTO departments (department_id, department_name) VALUES (10, 'Accounting');

INSERT INTO departments (department_id, department_name) VALUES (20, 'Marketing');

INSERT INTO departments (department_id, department_name) VALUES (30, 'Engineering');

SELECT * FROM employees;

SELECT * FROM departments;

CREATE TABLE nation ( 
nation_id NUMBER PRIMARY KEY, 
country_name VARCHAR2(100), 
population NUMBER 
);

CREATE TABLE participant ( 
participant_id NUMBER PRIMARY KEY, 
first_name VARCHAR2(100), 
gender CHAR(1), -- 'M' for Male, 'F' for Female 
nation_id NUMBER, 
CONSTRAINT fk_nation 
FOREIGN KEY (nation_id) 
REFERENCES nation (nation_id) 
);

INSERT INTO nation (nation_id, country_name, population) VALUES (1, 'USA', 330000000);

INSERT INTO nation (nation_id, country_name, population) VALUES (2, 'Canada', 38000000);

INSERT INTO nation (nation_id, country_name, population) VALUES (3, 'South Korea', 51200000);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (1, 'John', 'M', 1);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (2, 'Emma', 'F', 1);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (3, 'Chris', 'M', 2);

INSERT INTO participant (participant_id, first_name, gender, nation_id) VALUES (4, 'Olivia', 'F', 3);

CREATE TABLE employees2 ( 
employee_id NUMBER PRIMARY KEY, 
last_name VARCHAR2(50), 
department_id NUMBER 
);

CREATE TABLE departments2 ( 
department_id NUMBER PRIMARY KEY, 
department_name VARCHAR2(50) 
);

INSERT INTO employees2 (employee_id, last_name, department_id) VALUES (1, 'Smith', 10);

INSERT INTO employees2 (employee_id, last_name, department_id) VALUES (2, 'Johnson', 20);

INSERT INTO employees2 (employee_id, last_name, department_id) VALUES (3, 'Williams', 10);

INSERT INTO employees2 (employee_id, last_name, department_id) VALUES (4, 'Jones', 30);

INSERT INTO employees2 (employee_id, last_name, department_id) VALUES (5, 'Brown', 30);

INSERT INTO departments2 (department_id, department_name) VALUES (10, 'Accounting');

INSERT INTO departments2 (department_id, department_name) VALUES (20, 'Marketing');

INSERT INTO departments2 (department_id, department_name) VALUES (30, 'Engineering');

SELECT * 
FROM employee;

SELECT * 
FROM employee2;

SELECT * 
FROM employee2;

SELECT * 
FROM employees2;

SELECT * 
FROM departments2;

CREATE TABLE nation2 ( 
                        nation_id NUMBER PRIMARY KEY, 
                        country_name VARCHAR2(100), 
                        population NUMBER 
                        );

CREATE TABLE participant2 ( 
                            participant_id NUMBER PRIMARY KEY, 
                            first_name VARCHAR2(100), 
                            gender CHAR(1), -- 'M' for Male, 'F' for Female 
                            nation_id NUMBER, 
                            CONSTRAINT fk_nation 
                            FOREIGN KEY (nation_id) 
                            REFERENCES nation (nation_id) 
                            );

INSERT INTO nation2 (nation_id, country_name, population) VALUES (1, 'USA', 330000000);

INSERT INTO nation2 (nation_id, country_name, population) VALUES (2, 'Canada', 38000000);

INSERT INTO nation2 (nation_id, country_name, population) VALUES (3, 'South Korea', 51200000);

INSERT INTO participant2 (participant_id, first_name, gender, nation_id) VALUES (1, 'John', 'M', 1);

INSERT INTO participant2 (participant_id, first_name, gender, nation_id) VALUES (2, 'Emma', 'F', 1);

INSERT INTO participant2 (participant_id, first_name, gender, nation_id) VALUES (3, 'Chris', 'M', 2);

INSERT INTO participant2 (participant_id, first_name, gender, nation_id) VALUES (4, 'Olivia', 'F', 3);

INSERT INTO participant2 (participant_id, first_name, gender, nation_id) VALUES (5, 'Sophia', 'F', 2);

INSERT INTO participant2 (participant_id, first_name, gender, nation_id) VALUES (6, 'Isabella', 'F', 1);

SELECT p.first_name, 
       n.country.name, 
       n.population 
FROM participant2 p, nation2 n 
WHERE (p.nation_id = n.nation_id) AND (p.gender = "F") 
ORDER BY p.first_name DESC;

CREATE TABLE nation2 ( 
                        nation_id NUMBER PRIMARY KEY, 
                        country_name VARCHAR2(100), 
                        population NUMBER 
                        );

CREATE TABLE participant2 ( 
                            participant_id NUMBER PRIMARY KEY, 
                            first_name VARCHAR2(100), 
                            gender CHAR(1), -- 'M' for Male, 'F' for Female 
                            nation_id NUMBER, 
                            CONSTRAINT fk_nation 
                            FOREIGN KEY (nation_id) 
                            REFERENCES nation (nation_id) 
                            );

CREATE TABLE nation2 ( 
                        nation_id NUMBER PRIMARY KEY, 
                        country_name VARCHAR2(100), 
                        population NUMBER 
                        );

CREATE TABLE participant2 ( 
                            participant_id NUMBER PRIMARY KEY, 
                            first_name VARCHAR2(100), 
                            gender CHAR(1), -- 'M' for Male, 'F' for Female 
                            nation_id NUMBER, 
                            CONSTRAINT fk_nation 
                            FOREIGN KEY (nation_id) 
                            REFERENCES nation2 (nation_id) 
                            );

CREATE TABLE nation2 ( 
                        nation_id NUMBER PRIMARY KEY, 
                        country_name VARCHAR2(100), 
                        population NUMBER 
                        );

SHOW tables


SELECT * from nation2;

SELECT * FROM participant2;

CREATE TABLE participant2 ( 
                            participant_id NUMBER PRIMARY KEY, 
                            first_name VARCHAR2(100), 
                            gender CHAR(1), -- 'M' for Male, 'F' for Female 
                            nation_id NUMBER, 
                            CONSTRAINT fk_nation 
                            FOREIGN KEY (nation_id) REFERENCES nation2 (nation_id) 
                            );

CREATE TABLE participant2 ( 
                            participant_id NUMBER PRIMARY KEY, 
                            first_name VARCHAR2(100), 
                            gender CHAR(1), -- 'M' for Male, 'F' for Female 
                            nation2_id NUMBER, 
                            CONSTRAINT fk_nation 
                            FOREIGN KEY (nation2_id) REFERENCES nation2 (nation2_id) 
                            );

CREATE TABLE participant2 ( 
                            participant_id NUMBER PRIMARY KEY, 
                            first_name VARCHAR2(100), 
                            gender CHAR(1), -- 'M' for Male, 'F' for Female 
                            nation_id NUMBER, 
                            CONSTRAINT fk_nation 
                            FOREIGN KEY (nation_id) REFERENCES nation2 (nation_id) 
                            );

SELECT * FROM participant2;

DROP table nation;

CREATE TABLE participant2 ( 
                            participant_id NUMBER PRIMARY KEY, 
                            first_name VARCHAR2(100), 
                            gender CHAR(1), -- 'M' for Male, 'F' for Female 
                            nation_id NUMBER, 
                            CONSTRAINT fk_nation 
                            FOREIGN KEY (nation_id) REFERENCES nation2 (nation_id) 
                            );

DROP table participant;

DROP table nation;

SELECT * FROM participant2;

INSERT INTO participant2 (participant_id, first_name, gender, nation_id) VALUES (1, 'John', 'M', 1);

INSERT INTO participant2 (participant_id, first_name, gender, nation_id) VALUES (2, 'Emma', 'F', 1);

INSERT INTO participant2 (participant_id, first_name, gender, nation_id) VALUES (3, 'Chris', 'M', 2);

INSERT INTO participant2 (participant_id, first_name, gender, nation_id) VALUES (4, 'Olivia', 'F', 3);

INSERT INTO participant2 (participant_id, first_name, gender, nation_id) VALUES (5, 'Sophia', 'F', 2);

INSERT INTO participant2 (participant_id, first_name, gender, nation_id) VALUES (6, 'Isabella', 'F', 1);

SELECT * FROM participant2;

SELECT p.first_name, 
       n.country.name, 
       n.population 
FROM participant2 p, nation2 n 
WHERE (p.nation_id = n.nation_id) AND (p.gender = "F") 
ORDER BY p.first_name DESC;

SELECT * FROM nation2;

SELECT p.first_name, 
       n.country.name, 
       n.population 
FROM participant2 p, nation2 n 
WHERE (p.nation_id = n.nation_id) AND (p.gender = "F") 
ORDER BY p.first_name DESC;

SELECT p.first_name, 
       n.country.name, 
       n.population 
FROM participant2 p, nation2 n 
WHERE (p.nation_id = n.nation_id) AND (p.gender = 'F') 
ORDER BY p.first_name DESC;

SELECT p.first_name, 
       n.country_name, 
       n.population 
FROM participant2 p, nation2 n 
WHERE (p.nation_id = n.nation_id) AND (p.gender = 'F') 
ORDER BY p.first_name DESC;

SELECT * 
FROM departments;

SELECT e.employee_id, 
       e.last_name, 
       e.department_id, 
       d.department_name 
FROM employees e, departments d 
WHERE e.department_id = d.department_id;

CREATE TABLE nations ( 
    					nation_id NUMBER PRIMARY KEY, 
    					country_name VARCHAR2(100) 
    					);

CREATE TABLE sport ( 
    					sport_id NUMBER PRIMARY KEY, 
    					sport_name VARCHAR2(100) 
						);

CREATE TABLE participants ( 
    						participant_id NUMBER PRIMARY KEY, 
    						first_name VARCHAR2(100), 
    						nation_id NUMBER, 
    						main_sport_id NUMBER, 
    						CONSTRAINT fk_nations 
    						FOREIGN KEY (nation_id) 
    						REFERENCES nations (nation_id), 
    						CONSTRAINT fk_sport 
    						FOREIGN KEY (main_sport_id) 
    						REFERENCES sport (sport_id) 
							);

INSERT INTO nations (nation_id, country_name) VALUES (1, 'USA');

INSERT INTO nations (nation_id, country_name) VALUES (2, 'Canada');

INSERT INTO nations (nation_id, country_name) VALUES (3, 'South Korea');

INSERT INTO sport (sport_id, sport_name) VALUES (1, 'Basketball');

INSERT INTO sport (sport_id, sport_name) VALUES (2, 'Hockey');

INSERT INTO sport (sport_id, sport_name) VALUES (3, 'Archery');

INSERT INTO participants (participant_id, first_name, nation_id, main_sport_id) VALUES (1, 'John', 1, 1);

INSERT INTO participants (participant_id, first_name, nation_id, main_sport_id) VALUES (2, 'Emma', 1, 3);

INSERT INTO participants (participant_id, first_name, nation_id, main_sport_id) VALUES (3, 'Chris', 2, 2);

INSERT INTO participants (participant_id, first_name, nation_id, main_sport_id) VALUES (4, 'Olivia', 3, 3);

INSERT INTO participants (participant_id, first_name, nation_id, main_sport_id) VALUES (5, 'Sophia', 2, 1);

INSERT INTO participants (participant_id, first_name, nation_id, main_sport_id) VALUES (6, 'Liam', 3, 2);

SELECT * FROM nations;

SELECT * FROM sport;

SELECT * FROM participants;

SELECT p.first_name, 
    	n.country_name, 
    	s.sport_name 
FROM participants p, nations n, sport s 
WHERE (p.nation_id = n.nation_id) and (p.main_sport_id = s.sport_id) 
ORDER BY s.sport_name;

CREATE TABLE VolunteerActivity ( 
                                activity_id NUMBER PRIMARY KEY, 
                                juice_type VARCHAR2(20), 
                                quantity_sold NUMBER 
                                );

INSERT INTO VolunteerActivity VALUES (1, "Orange Juice", 100);

INSERT INTO VolunteerActivity VALUES (2, "Apple Juice", 80);

INSERT INTO VolunteerActivity VALUES (3, "Grape Juice", 640);

INSERT INTO VolunteerActivity VALUES (4, "Pineapple Juice", 300);

INSERT INTO VolunteerActivity VALUES (5, "Lemonade Juice", 110);

INSERT INTO VolunteerActivity VALUES (1, 'Orange Juice', 100);

INSERT INTO VolunteerActivity VALUES (2, 'Apple Juice', 80);

INSERT INTO VolunteerActivity VALUES (3, 'Grape Juice', 640);

INSERT INTO VolunteerActivity VALUES (4, 'Pineapple Juice', 300);

INSERT INTO VolunteerActivity VALUES (5, 'Lemonade Juice', 110);

SELECT * 
FROM VolenteerActivity;

SELECT * 
FROM VolunteerActivity;

CREATE TABLE Unit ( 
    				unit_id NUMBER PRIMARY KEY, 
    				unit_name VARCHAR2(20), 
    				activity_id NUMBER, 
    				FOREIGN KEY (activity_id) REFERENCES VolunteerActivity(activity_id) 
    				);

INSERT INTO Unit VALUES (101, 'Alpha Unit', 1);

INSERT INTO Unit VALUES (102, 'Bravo Unit', 2);

INSERT INTO Unit VALUES (103, 'Charlie Unit', 3);

INSERT INTO Unit VALUES (104, 'Delta Unit', 4);

INSERT INTO Unit VALUES (105, 'Echo Unit', 5);

CREATE TABLE Soldier ( 
    					soldier_id NUMBER PRIMARY KEY, 
    					first_name VARCHAR2(20), 
    					last_name VARCHAR2(20), 
    					rank VARCHAR2(20), 
    					unit_id NUMBER, 
    					activity_id NUMBER, 
    					FOREIGN KEY (unit_id) REFERENCES Unit(unit_id), 
    					FOREIGN KEY (activity_id) REFERENCES VolunteerActivity(activity_id) 
    					);

INSERT INTO Soldier VALUES (3028, 'John', 'Doe', 'Sergeant', 101, 1);

INSERT INTO Soldier VALUES (2734, 'Jane', 'Smith', 'Private', 102, 2);

INSERT INTO Soldier VALUES (3103, 'Michael', 'Johnson', 'Private', 103, 3);

INSERT INTO Soldier VALUES (4865, 'Emily', 'David', 'Private', 104, 4);

INSERT INTO Soldier VALUES (5371, 'Chris', 'Brown', 'Sergeant', 105, 5);

SELECT * FROM Soldier;

SELECT u.unit_name, v.juice_type 
FROM unit u JOIN VolunteerActivity v 
ON u.activity_id = v.activity_id;

SELECT u.first_name, s.unit_name, u.rank 
FROM Soldier s 
NATURAL JOIN Unit u;

SELECT s.first_name, u.unit_name, s.rank 
FROM Soldier s 
NATURAL JOIN Unit u;

SELECT u.unit_id, s.first_name, u.unit_name, s.rank 
FROM Soldier s 
JOIN Unit u 
USING (unit_id);

SELECT unit_id, s.first_name, u.unit_name, s.rank 
FROM Soldier s 
JOIN Unit u 
USING (unit_id);

SELECT s.first_name, s.last_name, s.rank, activity_id 
FROM Soldier s JOIN Unit u 
ON s.activity_id = u.activity_id 
WHERE u.unit_name = 'Alpha Unit';

SELECT s.first_name, s.last_name, s.rank, s.activity_id 
FROM Soldier s JOIN Unit u 
ON s.activity_id = u.activity_id 
WHERE u.unit_name = 'Alpha Unit';

SELECT u.unit_name, v.quantity_sold 
FROM VolunteerActivity v JOIN Unit u 
ON v.activity_id = u.activity_id 
WHERE v.quantity_sold >= 110;

SELECT u.unit_name, v.quantity_sold 
FROM VolunteerActivity v JOIN Unit u 
ON v.activity_id = u.activity_id 
AND v.quantity_sold >= 110;

SELECT s.first_name, u.unit_name 
FROM Unit u 
JOIN Soldier s 
ON u.unit_id = s.unit_id 
ORDER BY u.unit_name;

SELECT u.unit_name, v.juice_type, s.first_name, s.rank 
FROM Unit u 
JOIN VolunteerActivity v 
ON v.activity_id = u.activity_id 
JOIN Soldier s 
ON u.unit_id = s.unit_id 
WHERE v.quantity_sold BETWEEN 100 AND 600;

SELECT * FROM departments;

SELECT * FROM employees;

CREATE TABLE dept_temp ( 
                        deptno NUMBER PRIMARY KEY, 
                        dname VARCHAR2(30), 
                        loc VARCHAR2(30) 
                        );

INSERT INTO dept_temp VALUES (10, 'Administration', 'New York');

INSERT INTO dept_temp VALUES (20, 'Marketing', 'Los Angeles');

INSERT INTO dept_temp VALUES (30, 'Purchasing', 'San Francisco');

INSERT INTO dept_temp VALUES (40, 'Human Resources', 'Chicago');

select * from dept_temp;

SELECT e.last_name, d.department_name, d_new.dname 
FROM employees e 
JOIN dept_temp d_new 
ON e.department_id = d_new.deptno 
JOIN departments d 
ON d.department_id = e.department_id;

SELECT u.unit_name, v.juice_type, v.quantity_sold 
FROM Unit u 
CROSS JOIN VolunteerActiviy v 
ORDER BY v.quantity_sold DESC;

SELECT u.unit_name, v.juice_type, v.quantity_sold 
FROM Unit u 
CROSS JOIN VolunteerActivity v 
ORDER BY v.quantity_sold DESC;

