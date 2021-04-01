DROP TABLE SCHOOL;
DROP TABLE PARK;
DROP TABLE FACILITY;
DROP TABLE LIBRARY;
DROP TABLE IMDAE_APT;
DROP TABLE A_MEMBER;
DROP TABLE MY_MAEMAE;
DROP TABLE MY_RENT;
DROP TABLE A_RENT;
DROP TABLE A_MAEMAE;





/*회원테이블 만들기*/
CREATE TABLE A_MEMBER(
	MEM_ID VARCHAR2(50) NOT NULL, 
	MEM_PW VARCHAR2(50) NOT NULL,
	MEM_NAME VARCHAR2(50) NOT NULL,
	MEM_TEL VARCHAR2(50) NOT NULL,
	MEM_BIRTH VARCHAR2(50) NOT NULL,
	MEM_ADDR VARCHAR2(50) NOT NULL,
CONSTRAINT A_MEMBER_MEM_ID_PK PRIMARY KEY(MEM_ID)
);

SELECT * FROM A_MEMBER;

/*회원코드 시퀀스 생성 -> 삭제 */
INSERT INTO A_MEMBER VALUES('abcd','123','홍길동','010-1111-222','1999.01.01','봉선동');

/*전월세테이블 만들기*/
CREATE TABLE A_RENT(
	RENT_NUM VARCHAR2(20) NOT NULL,
	DONG VARCHAR2(50) NOT NULL,
	BUILD_YEAR NUMBER NOT NULL,
	DEPOSIT VARCHAR2(10) NOT NULL,
	LOYER VARCHAR2(10),
	APT_NAME VARCHAR2(100) NOT NULL,
	YEAR NUMBER NOT NULL,
	MONTH NUMBER NOT NULL,
	DAY NUMBER NOT NULL,
	APT_SIZE NUMBER NOT NULL,
	FLOOR NUMBER NOT NULL,
	CONSTRAINT A_RENT_RENT_NUM_PK PRIMARY KEY(RENT_NUM)
);

/* 전월세/매매 시퀀스 생성 입력을 하는 테이블이 아니고 조회를 하는 테이블이기 때문에 굳이 시퀀스생성을 할 필요가 없어보여서 삭제 */

/*매매테이블 만들기*/
CREATE TABLE A_MAEMAE(
	MAEMAE_NUM VARCHAR2(20) NOT NULL,
	DONG VARCHAR2(50) NOT NULL,
	PRICE VARCHAR2(20) NOT NULL,
	BUILD_YEAR NUMBER NOT NULL,
	APT_NAME VARCHAR2(100) NOT NULL,
	YEAR NUMBER NOT NULL,
	MONTH NUMBER NOT NULL,
	DAY NUMBER NOT NULL,
	APT_SIZE NUMBER NOT NULL,
	FLOOR NUMBER NOT NULL,
	CRIME VARCHAR2(100),
	CHARGE NUMBER,
	STARBUCKS NUMBER ,
	SUBWAY VARCHAR2(10),
	MOVIE VARCHAR2(50),
	CONSTRAINT A_MAEMAE_MAEMAE_NUM_PK PRIMARY KEY(MAEMAE_NUM)
);


ALTER TABLE MAEMAE ALTER COLUMN MAEMAE_NUM VARCHAR2(20) NOT NULL;

SELECT * FROM A_MAEMAE;
/*임대아파트 테이블 만들기 */
CREATE TABLE IMDAE_APT(
	IMDAE_NUM NUMBER NOT NULL,
	REGION VARCHAR2(30) NOT NULL,
	DONG VARCHAR2(20) NOT NULL,
	IMDAE_NAME VARCHAR2(100) NOT NULL,
	IMDAE_SIZE VARCHAR2(20) NOT NULL,
	MONTH_PAY VARCHAR2(20),
	DEPOSIT VARCHAR2(20),
	TOTAL_CNT NUMBER NOT NULL,
	CNT NUMBER NOT NULL,
	IMDAE_DIV VARCHAR2(50) NOT NULL,
	MOVE_INTO_DATE VARCHAR2(20)
);


select * from imdae_apt;

/*학교테이블 만들기*/
CREATE TABLE SCHOOL(
	DONG VARCHAR2(20) NOT NULL,
	SCHOOL_NAME VARCHAR2(50) NOT NULL,
	SCHOOL_ADDR VARCHAR2(200) NOT NULL
);

/*공원테이블 만들기*/
CREATE TABLE PARK(
	DONG VARCHAR2(20) NOT NULL,
	PARK_DIV VARCHAR2(20) NOT NULL,
	PARK_SIZE VARCHAR2(10) NOT NULL
);

/*내부시설테이블 만들기*/
CREATE TABLE FACILITY(
	DONG VARCHAR2(20) NOT NULL,
	APT_NAME VARCHAR2(50) NOT NULL,
	FACILITY VARCHAR2(500) NOT NULL
);


/*도서관테이블 만들기*/
CREATE TABLE LIBRARY(
	DONG VARCHAR2(20) NOT NULL,
	LIB_NAME VARCHAR2(100) NOT NULL,
	CLOSE VARCHAR2(500) NOT NULL
);

/*법정동별 도서관 불러오기*/
SELECT DONG, LISTAGG(LIB_NAME, ', ') WITHIN GROUP (ORDER BY LIB_NAME) LIB_NAME
FROM LIBRARY 
GROUP BY DONG

/*도서관수 숫자로 보여주기 */
SELECT DONG, COUNT(*)  FROM LIBRARY GROUP BY DONG

/*매매&학교테이블 조인*/
SELECT SCH.SCHOOL_NAME, SCH.SCHOOL_ADDR, MAE.DONG, MAE.APT_NAME, 
MAE.PRICE, MAE.BUILD_YEAR,MAE.YEAR, MAE.MONTH, MAE.DAY, MAE.APT_SIZE, MAE.FLOOR	   
FROM A_MAEMAE MAE, SCHOOL SCH
WHERE MAE.DONG=SCH.DONG
and mae.dong = '지산동';

select * from maemae where dong = '지산동'

/*매매&공원테이블 조인*/
SELECT PK.PARK_DIV, PK.PARK_SIZE, MAE.DONG, MAE.APT_NAME, 
	   MAE.PRICE, MAE.BUILD_YEAR, MAE.YEAR, MAE.MONTH, MAE.DAY, MAE.APT_SIZE, MAE.FLOOR	   
FROM A_MAEMAE MAE, PARK PK
WHERE MAE.DONG=PK.DONG
and mae.dong = '수완동';

/*매매&시설테이블 조인*/
SELECT FAC.FACILITY, MAE.DONG, MAE.APT_NAME, MAE.PRICE, MAE.BUILD_YEAR,
	   MAE.YEAR, MAE.MONTH, MAE.DAY, MAE.APT_SIZE, MAE.FLOOR	   
FROM A_MAEMAE MAE, FACILITY FAC
WHERE MAE.DONG=FAC.DONG
and mae.dong = '수완동';

/*매매&도서관테이블 조인 */
SELECT LIB.LIB_NAME, LIB.CLOSE, MAE.DONG, MAE.APT_NAME, MAE.PRICE, MAE.BUILD_YEAR,
	   MAE.YEAR, MAE.MONTH, MAE.DAY, MAE.APT_SIZE, MAE.FLOOR	   
FROM A_MAEMAE MAE, LIBRARY LIB
WHERE MAE.DONG=LIB.DONG
and mae.dong = '수완동'

/*매매 즐겨찾기 테이블*/
CREATE TABLE MY_MAEMAE(
	MY_MAEMAE_NUM VARCHAR2(20) NOT NULL,
	MAEMAE_MEM_ID VARCHAR2(20) NOT NULL,
constraint MY_MAEMAE_MY_MAEMAE_NUM_FK1 foreign key(MY_MAEMAE_NUM)
references A_MAEMAE(MAEMAE_NUM),
constraint MY_MAEMAE_MAEMAE_MEM_ID_FK2 foreign key(MAEMAE_MEM_ID)
references A_MEMBER(MEM_ID)
);
select * from my_maemae where  MAEMAE_MEM_ID = 'smart';
/*매매 즐겨찾기 기능 확인*/
INSERT INTO MY_MAEMAE VALUES(1,'smhrd3');


SELECT * FROM MY_MAEMAE

SELECT MAEMAE_NUM,DONG,PRICE,BUILD_YEAR,APT_NAME,YEAR,
	   MONTH,DAY,APT_SIZE,FLOOR
FROM   A_MAEMAE
WHERE  MAEMAE_NUM IN (SELECT MY_MAEMAE_NUM
					 FROM MY_MAEMAE 
					 WHERE MAEMAE_MEM_ID IN 'smhrd');

	

/*전월세 즐겨찾기 테이블*/
CREATE TABLE MY_RENT(
	MY_RENT_NUM VARCHAR2(20) NOT NULL,
	RENT_MEM_ID VARCHAR2(20) NOT NULL,
constraint MY_RENT_MY_RENT_NUM_FK1 foreign key(MY_RENT_NUM)
references A_RENT(RENT_NUM),
constraint MY_RENT_RENT_MEM_ID_FK2 foreign key(RENT_MEM_ID)
references A_MEMBER(MEM_ID)
);

/*전월세 즐겨찾기 기능 확인*/
SELECT * FROM MY_RENT

SELECT RENT_NUM,DONG,BUILD_YEAR,DEPOSIT,LOYER,APT_NAME,
	   YEAR,MONTH,DAY,APT_SIZE,FLOOR
FROM   A_RENT
WHERE  RENT_NUM IN (SELECT MY_RENT_NUM
					 FROM MY_RENT 
					 WHERE RENT_MEM_ID IN 'smart'); 
