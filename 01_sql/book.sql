--Book sample project table

/* 테이블 : BOOK                                 | 테이블명 : MANAGER
    --------------------------------------------|----------------------------------------
    컬럼명,      데이터 타입(크기),    제약조건       |컬럼명,         데이터 타입(크기),  제약조건
    --------------------------------------------|----------------------------------------
    BOOK_SEQ    NUMBER              PK          |MANAGER_SEQ    NUMBER           PK
    ISBN        VARCHAR2(13)        U           |MANAGER_ID     VARCHAR2(10)
    TITLE       VARCHAR2(50)        NOT NULL    |NAME           VARCHAR2(30)
    AUTHOR      VARCHAR2(30)                    |PASSWORD       VARCHAR2(10
    CONTENT     VARCHAR2(3000)                  |REG_ID         VARCHAR2(10)         
    COMPANY_CD  NUMBER(4)                       |REG_DATE       DATE            DEFAUL SYSDATE
    TOTAL_PAGE  NUMBER(4)                       |MOD_ID         VARCHAR2(10)         
    PRICE       NUMBER(6)                       |MOD_DATE       DATE   
    QUANTITY    NUMBER(4)                       |
    REG_ID      VARCHAR2(10)                    |
    REG_DATE    DATE              DEFAUL SYSDATE|
    MOD_ID      VARCHAR2(10)                    |
    MOD_DATE    DATE                            |
    --------------------------------------------|------------------------------------------
    테이블 명 CODE                                |
    --------------------------------------------|------------------------------------------
    CODE        NUMVER(4)           PK
    P_CODE      NUMBER(4)           NOT NULL
    CODE_NM     VARCHAR2(60)        NOT NULL
    CODE_VAL    VARCHAR2(300)       NOT NULL
    USE_YN      CHAR(1)
    CODE_DESC   VARCHAR2(300)
    ORDER       NUMBER              NOT NULL
    REG_ID      VARCHAR2(10) 
    REG_DATE    DATE              DEFAUL SYSDATE
    MOD_ID      VARCHAR2(10) 
    MOD_DATE    DATE      
    --------------------------------------------|------------------------------------------
    시퀀스 명 : SEQ_BOOK, SEQ_MANAGER : NOCYCLE, NOMAXVALUE, 1씩 증가
*/

DROP TABLE BOOK;
CREATE TABLE BOOK
(  BOOK_SEQ     NUMBER      
 , ISBN         VARCHAR2(13)
 , TITLE        VARCHAR2(50)
 , AUTHOR       VARCHAR2(30)
 , CONTENT      VARCHAR2(3000)
 , COMPANY_CD   NUMBER(4)
 , TOTAL_PAGE   NUMBER(4)
 , PRICE        NUMBER(6)
 , QUANTITY     NUMBER(4)
 , REG_ID       VARCHAR2(10)
 , REG_DATE     DATE        DEFAULT SYSDATE
 , MOD_ID       VARCHAR2(10)
 , MOD_DATE     DATE
 , CONSTRAINT PK_BOOK_SEQ   PRIMARY KEY (BOOK_SEQ)
 , CONSTRAINT UQ_ISBN UNIQUE (ISBN)
);

-- BOOK 입력
-- 출판사: 창비
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9788936433598', '채식주의자', '한강', '맨부키 상을 받은 한강의 소설', 1001, 247, 10000, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9788936438005', '품위 있는 삶', '정소현', '정소현 소설집', 1001, 248, 14000, 6, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9788936464691', '천사는 침묵했다', '한하인리히 뵐', '노벨 문학상 수상 작가 하인리히 뵐의 유작', 1001, 256, 14000, 3, 0);
COMMIT;
-- 출판사 : 더스토리
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791159039690', '어린왕자(초판본)', '생텍쥐페리', '세상에서 가장 순수한 영혼, 어린 왕자 이야기오리지널 초판본 표지디자인!', 1002, 150, 8820, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791159036514', '데미안(초판본)(리커버 한정판)', '헤르만 헤세', '나를 찾아가는 길 <데미안>', 1002, 248, 10800, 10, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791195759019', '스토리텔링으로 설득의 고수가 되라', '쉬윈송', '하버드 비즈니스 스쿨에서 인정받은 스토리텔링 설득법', 1002, 328, 13500, 7, 0);
COMMIT;
-- 출판사 :  위즈덤 하웃
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791190182645', '제 인생에 답이 없어요', '선바', '크리에이터 선바의 거침없는 현생만담', 1003, 192, 10800, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791190182560', '인간 본성의 법칙', '로버트 그린', '500만 년에 걸쳐 형성된 인간 본성에 관한 탐구서!', 1003, 920, 28800, 10, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791190305273', '영화는 두 번 시작된다', '이동진', '영화는 두 번 시작된다. 처음 한 번은 극장 안에서, 그다음 한 번은 극장 밖에서.', 1003, 944, 35100, 3, 0);
COMMIT;
-- 출판사 : 흔
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791196394509', '죽고 싶지만 떡볶이는 먹고 싶어', '백세희', '의심 없이 편안하게 사랑하고 사랑받고 싶은 한 사람의 이야기', 1004, 208, 12420, 4, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791196394578', '죽고 싶지만 떡볶이는 먹고 싶어. 2', '백세희', '우울에 도취되기보다 나를 긍정하기에 골몰하려고 애쓰는 한 사람의 이야기', 1004, 264, 12420, 6, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791196394547', '어색하지 않게 사랑을 말하는 방법', '소은성', '뻔한 마음은 없어요, 뻔한 표현이 있을 뿐.', 1004, 292, 13320, 1, 0);
COMMIT;
-- 출판사 : 북하우스
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9788956055466', '책은 도끼다', '박웅현', '인문학으로 광고하는 박웅현이 들려주는 풍요로운 삶을 위한 깊이 있는 책 읽기의 정수!', 1005, 348, 14400, 11, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791164050321', '평소의 발견', '유병욱', '평범하지만 시시하지 않은 우리의 ‘평소’ 속에 숨은 놀라운 힘!', 1005, 280, 12600, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9788956058054', '내가 확실히 아는 것들', '오프라 윈프리', '14년 동안의 칼럼에서 엄선한 보석 같은 사색의 글들!', 1005, 280, 12420, 3, 0);
COMMIT;
--==================================================================
-- book 테이블의 기본 쿼리들 작성
-- 1. 1건 조회
SELECT b.book_seq
     , b.isbn
     , b.title
     , b.author
     , b.content
     , b.company_cd
     , b.company_nm
     , b.total_page
     , b.price
     , b.quantity
     , b.reg_id
     , b.reg_date
     , b.mod_id
     , b.mod_date
  FROM v_book b
 WHERE b.book_seq = 1
;
-- 2. 전체 조회
-- (1) 출판사 코드로 조회
SELECT b.book_seq
     , b.isbn
     , b.title
     , b.author
     , b.content
     , b.company_cd
     , b.company_nm
     , b.total_page
     , b.price
     , b.quantity
     , b.reg_id
     , b.reg_date
     , b.mod_id
     , b.mod_date
  FROM v_book b
 WHERE b.company_cd = 1001
;

-- (2) 일정 가격 이상인 도서 조회
SELECT b.book_seq
     , b.isbn
     , b.title
     , b.author
     , b.content
     , b.company_cd
     , b.company_nm
     , b.total_page
     , b.price
     , b.quantity
     , b.reg_id
     , b.reg_date
     , b.mod_id
     , b.mod_date
  FROM v_book b
 WHERE b.price >= 20000
;

-- (3) 가격 범위 도서 조회
SELECT b.book_seq
     , b.isbn
     , b.title
     , b.author
     , b.content
     , b.company_cd
     , b.company_nm
     , b.total_page
     , b.price
     , b.quantity
     , b.reg_id
     , b.reg_date
     , b.mod_id
     , b.mod_date
  FROM v_book b
 WHERE b.price BETWEEN 10000 AND 15000A
;

-- (4) 일정 가격 이하인 도서 조회
SELECT b.book_seq
     , b.isbn
     , b.title
     , b.author
     , b.content
     , b.company_cd
     , b.company_nm
     , b.total_page
     , b.price
     , b.quantity
     , b.reg_id
     , b.reg_date
     , b.mod_id
     , b.mod_date
  FROM v_book b
 WHERE b.price <= 15000
;

-- (5) 제목, 저자, 출판사 조건 종합 조회
SELECT b.book_seq
     , b.isbn
     , b.title
     , b.author
     , b.content
     , b.company_cd
     , b.company_nm
     , b.total_page
     , b.price
     , b.quantity
     , b.reg_id
     , b.reg_date
     , b.mod_id
     , b.mod_date
  FROM v_book b
 WHERE b.title LIKE '%다%'
    OR b.author LIKE '%다%'
    OR b.content LIKE '%다%'
    OR b.company_nm LIKE '%다%'
;
-- 3. 1건 입력
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '', '', '', '', 1003, 192, 14400, 11, 0);

-- 4. 1건 수정
UPDATE BOOK b
   SET b.isbn = ''
     , b.title = ''
     , b.author = ''
     , b.content = ''
     , b.company_cd = ''
     , b.total_page = ''
     , b.price = ''
     , b.quantity = ''
     , b.mod_id = ''
     , b.mod_date = sysdate
 WHERE b.book_seq = 1
;

-- 5. 1건 삭제
DELETE BOOK b
 WHERE b.book_seq = 1
;

-------------------------------------------------------------------------------------
DROP TABLE MANAGER;
CREATE TABLE MANAGER
(  MANAGER_SEQ  NUMBER
 , MANAGER_ID   VARCHAR2(10)    NOT NULL
 , NAME         VARCHAR2(30)
 , PASSWORD     VARCHAR2(10)
 , REG_ID       VARCHAR2(10)
 , REG_DATE     DATE        DEFAULT SYSDATE
 , MOD_ID       VARCHAR2(10)
 , MOD_DATE     DATE
 , CONSTRAINT PK_MANAGER_SEQ   PRIMARY KEY (MANAGER_SEQ)
);

INSERT INTO MANAGER (MANAGER_SEQ, MANAGER_ID, NAME, PASSWORD, REG_ID)
VALUES (0, 'root', '수퍼관리자', 'root', 0);

INSERT INTO MANAGER (MANAGER_SEQ, MANAGER_ID, NAME, PASSWORD, REG_ID)
VALUES (SEQ_MANAGER.NEXTVAL, 'admin', '관리자', 'admin', 0);
COMMIT;

DROP TABLE CODE;
CREATE TABLE CODE
(  CODE         NUMBER(4)
 , P_CODE       NUMBER(4)       NOT NULL
 , CODE_NM      VARCHAR2(60)    NOT NULL
 , CODE_VAL     VARCHAR2(300)   NOT NULL
 , USE_YN       CHAR(1)
 , CODE_DESC    VARCHAR2(300)
 , SORT_ORDER   NUMBER          NOT NULL
 , REG_ID       VARCHAR2(10)
 , REG_DATE     DATE            DEFAULT SYSDATE
 , MOD_ID       VARCHAR2(10)
 , MOD_DATE     DATE
 , CONSTRAINT PK_CODE   PRIMARY KEY (CODE)
);

DROP SEQUENCE SEQ_BOOK;
CREATE SEQUENCE SEQ_BOOK
START WITH 1
NOMAXVALUE
NOCYCLE
;

DROP SEQUENCE SEQ_MANAGER;
CREATE SEQUENCE SEQ_MANAGER
START WITH 1
NOMAXVALUE
NOCYCLE
;

/*-----------------------------------------------------------------------------------
  출판사 번호와 출판사 이름을 코드로 관리
  출판사 관련 코드는 1000 번대가 출판사 코드
  자세한 개별 출판사의 정보는 1001, 1002, 1003, ... 순서로 증가하도록 실제 데이터를 넣고 시작
*/
-- CODE 출판사 INSERT INTO 구문 작성
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1000, 0, 'COMPANY', '출판사', 'Y', '출판사코드', 0, 0);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1001, 1000, 'CHANGBI', '창비', 'Y', '창작과 비평서', 0, 0);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1002, 1000, 'THE_STORY', '더스토리', 'Y', '더 스토리', 0, 0);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1003, 1000, 'WISDOM', '위즈덤', 'Y', '위즈덤 하우스', 0, 0);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1004, 1000, 'HUEN', '혼', 'Y', '독립출판 혼', 0, 0);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1005, 1000, 'BOOK_HOUSE', '북하우스', 'Y', '북하스우', 0, 0);
COMMIT;

/* ------------------------------------------------------
   출판사 명이 값이 보이는 뷰를 작성
   ------------------------------------------------------
*/
CREATE OR REPLACE VIEW v_book 
AS
SELECT b.book_seq
     , b.isbn
     , b.title
     , b.author
     , b.content
     , b.company_cd
     , c.code_val  company_nm
     , b.total_page
     , b.price
     , b.quantity
     , b.reg_id
     , b.reg_date
     , b.mod_id
     , b.mod_date
  FROM BOOK b JOIN code c ON b.company_cd = c.code
WITH READ ONLY
;

--=========================================================
-- 관리자 로그인 쿼리 : 아이디 비번 일치 여부 판단
SELECT m.manager_seq
  FROM MANAGER m
 WHERE m.manager_id = 'admin'
    AND m.password = 'admin'
;
SELECT m.*
  FROM MANAGER m
;

--===========================================================
-- 코드 조회 쿼리
SELECT c.code
     , c.code_nm
     , c.code_val
  FROM CODE c
 WHERE c.p_code = 1000
   AND c.use_yn = 'Y'
;

