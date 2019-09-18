--Book sample project table

/* ���̺� : BOOK                                 | ���̺�� : MANAGER
    --------------------------------------------|----------------------------------------
    �÷���,      ������ Ÿ��(ũ��),    ��������       |�÷���,         ������ Ÿ��(ũ��),  ��������
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
    ���̺� �� CODE                                |
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
    ������ �� : SEQ_BOOK, SEQ_MANAGER : NOCYCLE, NOMAXVALUE, 1�� ����
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
VALUES (0, 'root', '���۰�����', 'root', 0);

INSERT INTO MANAGER (MANAGER_SEQ, MANAGER_ID, NAME, PASSWORD, REG_ID)
VALUES (SEQ_MANAGER.NEXTVAL, 'admin', '������', 'admin', 0);
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
  ���ǻ� ��ȣ�� ���ǻ� �̸��� �ڵ�� ����
  ���ǻ� ���� �ڵ�� 1000 ���밡 ���ǻ� �ڵ�
  �ڼ��� ���� ���ǻ��� ������ 1001, 1002, 1003, ... ������ �����ϵ��� ���� �����͸� �ְ� ����
*/
-- CODE ���ǻ� INSERT INTO ���� �ۼ�
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1000, 0, 'COMPANY', '���ǻ�', 'Y', '���ǻ��ڵ�', 0, 0);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1001, 1000, 'CHANGBI', 'â��', 'Y', 'â�۰� ����', 0, 0);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1002, 1000, 'THE_STORY', '�����丮', 'Y', '�� ���丮', 0, 0);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1003, 1000, 'WISDOM', '�����', 'Y', '����� �Ͽ콺', 0, 0);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1004, 1000, 'HUEN', 'ȥ', 'Y', '�������� ȥ', 0, 0);
INSERT INTO CODE (CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID)
VALUES (1005, 1000, 'BOOK_HOUSE', '���Ͽ콺', 'Y', '���Ͻ���', 0, 0);
COMMIT;

-- BOOK �Է�
-- ���ǻ�: â��
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9788936433598', 'ä��������', '�Ѱ�', '�Ǻ�Ű ���� ���� �Ѱ��� �Ҽ�', 1001, 247, 10000, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9788936438005', 'ǰ�� �ִ� ��', '������', '������ �Ҽ���', 1001, 248, 14000, 6, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9788936464691', 'õ��� ħ���ߴ�', '�����θ��� ��', '�뺧 ���л� ���� �۰� ���θ��� ���� ����', 1001, 256, 14000, 3, 0);
COMMIT;
-- ���ǻ� : �����丮
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791159039690', '�����(���Ǻ�)', '�������丮', '���󿡼� ���� ������ ��ȥ, � ���� �̾߱�������� ���Ǻ� ǥ��������!', 1002, 150, 8820, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791159036514', '���̾�(���Ǻ�)(��Ŀ�� ������)', '�츣�� �켼', '���� ã�ư��� �� <���̾�>', 1002, 248, 10800, 10, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791195759019', '���丮�ڸ����� ������ ����� �Ƕ�', '������', '�Ϲ��� ����Ͻ� ���𿡼� �������� ���丮�ڸ� �����', 1002, 328, 13500, 7, 0);
COMMIT;
-- ���ǻ� :  ����� �Ͽ�
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791190182645', '�� �λ��� ���� �����', '����', 'ũ�������� ������ ��ħ���� ��������', 1003, 192, 10800, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791190182560', '�ΰ� ������ ��Ģ', '�ι�Ʈ �׸�', '500�� �⿡ ���� ������ �ΰ� ������ ���� Ž����!', 1003, 920, 28800, 10, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791190305273', '��ȭ�� �� �� ���۵ȴ�', '�̵���', '��ȭ�� �� �� ���۵ȴ�. ó�� �� ���� ���� �ȿ���, �״��� �� ���� ���� �ۿ���.', 1003, 944, 35100, 3, 0);
COMMIT;
-- ���ǻ� : ��
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791196394509', '�װ� ������ �����̴� �԰� �;�', '�鼼��', '�ǽ� ���� ����ϰ� ����ϰ� ����ް� ���� �� ����� �̾߱�', 1004, 208, 12420, 4, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791196394578', '�װ� ������ �����̴� �԰� �;�. 2', '�鼼��', '��￡ ����Ǳ⺸�� ���� �����ϱ⿡ ����Ϸ��� �־��� �� ����� �̾߱�', 1004, 264, 12420, 6, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791196394547', '������� �ʰ� ����� ���ϴ� ���', '������', '���� ������ �����, ���� ǥ���� ���� ��.', 1004, 292, 13320, 1, 0);
COMMIT;
-- ���ǻ� : ���Ͽ콺
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9788956055466', 'å�� ������', '�ڿ���', '�ι������� �����ϴ� �ڿ����� ����ִ� ǳ��ο� ���� ���� ���� �ִ� å �б��� ����!', 1005, 348, 14400, 11, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9791164050321', '����� �߰�', '������', '��������� �ý����� ���� �츮�� ����ҡ� �ӿ� ���� ���� ��!', 1005, 280, 12600, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL , '9788956058054', '���� Ȯ���� �ƴ� �͵�', '������ ������', '14�� ������ Į������ ������ ���� ���� ����� �۵�!', 1005, 280, 12420, 3, 0);
COMMIT;