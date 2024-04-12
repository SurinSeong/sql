REM   Script: SQLD_DML_WHERE_0412
REM   멀티캠퍼스 수업 0412

CREATE TABLE OLYMPIC ( 
						olympic_id NUMBER NOT NULL, 
						host_city CHAR(15) NOT NULL, 
						host_year INT NOT NULL, 
						CONSTRAINT OLYMPIC_PK PRIMARY KEY (olympic_id) 
						);

CREATE TABLE TEAM ( 
					TEAM_NO CHAR(4) , 
					TEAM_NM VARCHAR2(50) NOT NULL , 
					CONSTRAINT TEAM_PK PRIMARY KEY (TEAM_NO) 
    				);

INSERT INTO TEAM (TEAM_NO, TEAM_NM) VALUES ('D001', '마케팅팀');

INSERT INTO TEAM (TEAM_NO, TEAM_NM) VALUES ('D002', '개발팀');

COMMIT;

SELECT COUNT(TEAM_NO) 
FROM TEAM 
WHERE TEAM_NO = 1001;

INSERT INTO OLYMPIC (olympic_id, host_city, host_year) VALUES (1, '서울', 1988);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year) VALUES (2, '평양', 2024);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year) VALUES (3, '도쿄', 2019);

SELECT * 
FROM olympic 
WHERE host_city = '서울';

SELECT * 
FROM olympic 
WHERE host_city = "서울";

UPDATE olympic SET host_city = '평창' 
WHERE host_city = '평양';

SELECT * 
FROM olympic;

DELETE FROM olympic 
WHERE host_year = 2019;

SELECT * 
FROM olympic;

CREATE TABLE OLYMPIC2 ( 
						olympic_id  NUMBER    NOT NULL, 
    					host_city  CHAR(15) NOT NULL, 
    					host_year  NUMBER  NOT NULL, 
    					nation CHAR(10) NOT NULL, 
    					history CHAR(10), 
    					CONSTRAINT OLYMPIC_PK PRIMARY KEY (olympic_id) 
						);

INSERT INTO OLYMPIC2 (olympic_id, host_city, host_year, nation, history) VALUES (1, '아테나', 2004, '그리스', NULL);

INSERT INTO OLYMPIC2 (olympic_id, host_city, host_year, nation, history) VALUES (2, '런던', 2012, '영국', NULL);

INSERT INTO OLYMPIC2 (olympic_id, host_city, host_year, nation, history) VALUES (3, '베이징', 2008, '중국', NULL);

INSERT INTO OLYMPIC2 (olympic_id, host_city, host_year, nation, history) VALUES (4, '모스크바', 1980, '러시아', NULL);

INSERT INTO OLYMPIC2 (olympic_id, host_city, host_year, nation, history) VALUES (5, '서울', 1988, '한국', NULL);

DROP TABLE olympic;

CREATE TABLE OLYMPIC ( 
						olympic_id  NUMBER    NOT NULL, 
    					host_city  CHAR(15) NOT NULL, 
    					host_year  NUMBER  NOT NULL, 
    					nation CHAR(10) NOT NULL, 
    					history CHAR(10), 
    					CONSTRAINT OLYMPIC_PK PRIMARY KEY (olympic_id) 
						);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (1, '아테나', 2004, '그리스', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (2, '런던', 2012, '영국', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (3, '베이징', 2008, '중국', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (4, '모스크바', 1980, '러시아', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (5, '서울', 1988, '한국', NULL);

SELECT * 
FROM olympic 
WHERE host_year BETWEEN 1980 AND 2010;

SELECT * 
FROM olympic 
WHERE host_city in ('아테나', '로마', '파리', '런던');

SELECT * 
FROM olympic 
WHERE host_city = "%국";

SELECT * 
FROM olympic 
WHERE host_city = '%국';

SELECT * 
FROM olympic 
WHERE nation = '%국';

SELECT * 
FROM olympic 
WHERE nation like '%국';

UPDATE olympic SET history = '근대 올림픽' 
WHERE host_year > 1896;

UPDATE olympic SET history = '근대올림픽' 
WHERE host_year > 1896;

SELECT * 
FROM olympic 
WHERE nation like '%국%';

DROP TABLE olympic;

CREATE TABLE OLYMPIC ( 
						olympic_id  NUMBER    NOT NULL, 
    					host_city  CHAR(15) NOT NULL, 
    					host_year  NUMBER  NOT NULL, 
    					nation CHAR(10) NOT NULL, 
    					history CHAR(50), 
    					CONSTRAINT OLYMPIC_PK PRIMARY KEY (olympic_id) 
						);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (1, '아테나', 2004, '그리스', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (2, '런던', 2012, '영국', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (3, '베이징', 2008, '중국', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (4, '모스크바', 1980, '러시아', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (5, '서울', 1988, '한국', NULL);

UPDATE olympic SET history = '근대올림픽' 
WHERE host_year > 1896;

SELECT * FROM olympic;

DROP TABLE olympic;

CREATE TABLE OLYMPIC ( 
						olympic_id  NUMBER    NOT NULL, 
    					host_city  VARCHAR2(50) NOT NULL, 
    					host_year  NUMBER  NOT NULL, 
    					nation VARCHAR2(50) NOT NULL, 
    					history VARCHAR2(50), 
    					CONSTRAINT OLYMPIC_PK PRIMARY KEY (olympic_id) 
						);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (1, '아테나', 2004, '그리스', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (2, '런던', 2012, '영국', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (3, '베이징', 2008, '중국', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (4, '모스크바', 1980, '러시아', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, history) VALUES (5, '서울', 1988, '한국', NULL);

SELECT * 
FROM olympic 
WHERE host_year BETWEEN 1980 AND 2010;

SELECT * 
FROM olympic 
WHERE host_city in ('아테나', '로마', '파리', '런던');

SELECT * 
FROM olympic 
WHERE nation like '%국%';

SELECT * 
FROM olympic 
WHERE nation like '%국';

UPDATE olympic SET history = '근대올림픽' 
WHERE host_year > 1896;

SELECT * FROM olympic;

DELETE FROM olympic 
WHERE host_year < 1889;

SELECT * FROM olympic;

DROP TABLE olympic;

CREATE TABLE OLYMPIC ( 
    					olympic_id NUMBER NOT NULL, 
    					host_city VARCHAR2(50) NOT NULL, 
    					host_year NUMBER  NOT NULL, 
    					nation VARCHAR2(50) NOT NULL, 
    					season VARCHAR2(50) NOT NULL, 
    					history VARCHAR2(50), 
    					CONSTRAINT OLYMPIC_PK PRIMARY KEY (olympic_id) 
						);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (1, '밴쿠버', 2010, '캐나다', 'winter', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (2, '나가노', 1998, '일본', 'winter', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (3, '소치', 2014, '러시아', 'winter', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (4, '서울', 1988, '대한민국', 'summer', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (5, '바르셀로나', 1992, '스페인', 'summer', NULL);

SELECT * 
FROM olympic 
WHERE host_year > 2001 and season = 'winter';

SELECT * 
FROM olympic 
WHERE nation = '%국' or host_year between 1980 and 2000;

SELECT * 
FROM olympic 
WHERE nation = '%아%' AND host_year > 1980;

SELECT * 
FROM olympic 
WHERE nation = '%아%' AND host_year > 1990;

SELECT * 
FROM olympic 
WHERE (nation = '%아%') AND (host_year > 1990);

SELECT * 
FROM olympic 
WHERE nation like '%국' or host_year between 1980 and 2000;

SELECT * 
FROM olympic 
WHERE (nation like '%아%') AND (host_year > 1990);

SELECT * 
FROM olympic 
WHERE nation like '%국' or (host_year between 1980 and 2000);

SELECT * 
FROM olympic 
WHERE (nation like '%아%') AND (host_year > 1990);

DROP TABLE olympic;

CREATE TABLE OLYMPIC ( 
    					olympic_id  NUMBER    NOT NULL, 
    					host_city  VARCHAR2(50) NOT NULL, 
    					host_year  NUMBER  NOT NULL, 
    					nation VARCHAR2(50) NOT NULL, 
    					season VARCHAR2(50) NOT NULL, 
    					history VARCHAR2(50), 
    					CONSTRAINT OLYMPIC_PK PRIMARY KEY (olympic_id) 
						);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (1, '도쿄', 2020, '일본', 'summer', '근대 올림픽');

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (2, '베이징', 2008, '중국', 'summer', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (3, '런던', 2012, '영국', 'summer', '근대 올림픽');

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (4, '밴쿠버', 2010, '캐나다', 'winter', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (5, '리우데자네이루', 2016, '브라질', 'summer', '근대 올림픽');

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (6, '바르셀로나', 1992, '스페인', 'summer', NULL);

INSERT INTO OLYMPIC (olympic_id, host_city, host_year, nation, season, history) VALUES (7, '서울', 1988, '대한민국', 'summer', NULL);

SELECT * 
FROM olympic 
WHERE season != 'winter';

SELECT * 
FROM olympic 
WHERE nation not in ('미국', '브라질', '독일', '중국');

SELECT * 
FROM olympic 
WHERE history is not null;

SELECT * 
FROM olympic 
WHERE nation NOT LIKE '%아%';

SELECT * 
FROM olympic 
WHERE season <> 'winter';

SELECT * 
FROM olympic 
WHERE season ^= 'winter';

SELECT * 
FROM olympic 
WHERE season <> 'winter';

