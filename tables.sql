CREATE TABLE CARGO(
       IDCARGO NUMBER(10) PRIMARY KEY,
       NOME    VARCHAR2(40) NOT NULL UNIQUE,
       SALARIO NUMBER(10,2) NOT NULL);
       
CREATE TABLE TB_FUNCIONARIO(
       IDFUNC   NUMBER(10) PRIMARY KEY,
       NOME     VARCHAR2(40) NOT NULL,
       SEXO     VARCHAR2(10) NOT NULL,
       ESTCIVIL VARCHAR2(10)NOT NULL,
       ID_CARGO NUMBER(10) NOT NULL,
       FOREIGN KEY (ID_CARGO) REFERENCES CARGO(IDCARGO));
       
DROP SEQUENCE SEQCARGO;
DROP SEQUENCE SEQFUNC;

CREATE SEQUENCE SEQCARGO START WITH 101;
CREATE SEQUENCE SEQFUNC;

INSERT INTO CARGO VALUES(SEQCARGO.NEXTVAL,'Est�gio','18000');
INSERT INTO CARGO VALUES(SEQCARGO.NEXTVAL,'J�nior','25000');
INSERT INTO CARGO VALUES(SEQCARGO.NEXTVAL,'Pleno','54000');
INSERT INTO CARGO VALUES(SEQCARGO.NEXTVAL,'S�nior','92000');
COMMIT;

SELECT * FROM CARGO;

SELECT F.*, C.NOME AS CARGO, SALARIO FROM TB_FUNCIONARIO F INNER JOIN CARGO C ON C.IDCARGO = F.ID_CARGO;
