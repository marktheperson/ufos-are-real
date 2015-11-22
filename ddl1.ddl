-- Generated by Oracle SQL Developer Data Modeler 4.1.1.888
--   at:        2015-11-22 14:47:42 CST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




DROP TABLE F15E4Auth CASCADE CONSTRAINTS ;

DROP TABLE F15E4Cont CASCADE CONSTRAINTS ;

DROP TABLE F15E4Emp CASCADE CONSTRAINTS ;

DROP TABLE F15E4Lab CASCADE CONSTRAINTS ;

DROP TABLE F15E4RFE CASCADE CONSTRAINTS ;

DROP TABLE F15E4comm CASCADE CONSTRAINTS ;

DROP TABLE F15E4doc CASCADE CONSTRAINTS ;

DROP TABLE F15E4role_code CASCADE CONSTRAINTS ;

DROP TABLE F15E4stat_code CASCADE CONSTRAINTS ;

DROP TABLE F15E4status CASCADE CONSTRAINTS ;

DROP TABLE F15E4tasks CASCADE CONSTRAINTS ;

CREATE TABLE F15E4Auth
  ( auth_id INTEGER NOT NULL , RIGHT VARCHAR2 (10)
  ) ;
ALTER TABLE F15E4Auth ADD CONSTRAINT F15E4Auth_PK PRIMARY KEY ( auth_id ) ;


CREATE TABLE F15E4Cont
  (
    F15E4role_code_role_id INTEGER ,
    comm                   VARCHAR2 (4000) ,
    F15E4Emp_emp_id        INTEGER ,
    F15E4RFE_RFE_id        INTEGER
  ) ;


CREATE TABLE F15E4Emp
  (
    emp_id            INTEGER NOT NULL ,
    emp_name          VARCHAR2 (50) ,
    email             VARCHAR2 (100) ,
    office            VARCHAR2 (12) ,
    phone             VARCHAR2 (8) ,
    emp_status        VARCHAR2 (1) ,
    status_date       DATE ,
    typer             VARCHAR2 (255) ,
    F15E4Auth_auth_id INTEGER ,
    F15E4Lab_lab_id   INTEGER
  ) ;
ALTER TABLE F15E4Emp ADD CONSTRAINT F15E4Emp_PK PRIMARY KEY ( emp_id ) ;


CREATE TABLE F15E4Lab
  ( lab_id INTEGER NOT NULL , lab_name VARCHAR2 (50)
  ) ;
ALTER TABLE F15E4Lab ADD CONSTRAINT F15E4Lab_PK PRIMARY KEY ( lab_id ) ;


CREATE TABLE F15E4RFE
  (
    RFE_id          INTEGER NOT NULL ,
    expl            VARCHAR2 (4000) ,
    alt_pro         VARCHAR2 (4000) ,
    review_date     DATE ,
    F15E4Emp_emp_id INTEGER
  ) ;
ALTER TABLE F15E4RFE ADD CONSTRAINT F15E4RFE_PK PRIMARY KEY ( RFE_id ) ;


CREATE TABLE F15E4comm
  (
    comm_id         INTEGER NOT NULL ,
    F15E4RFE_RFE_id INTEGER ,
    F15E4Emp_emp_id INTEGER ,
    details         VARCHAR2 (1000)
  ) ;
ALTER TABLE F15E4comm ADD CONSTRAINT F15E4comm_PK PRIMARY KEY ( comm_id ) ;


CREATE TABLE F15E4doc
  (
    doc_id        INTEGER NOT NULL ,
    filename      VARCHAR2 (4000 BYTE) ,
    file_mimetype VARCHAR2 (512) ,
    file_charset  VARCHAR2 (512) ,
    file_blob BLOB ,
    file_comments   VARCHAR2 (4000) ,
    tags            VARCHAR2 (4000) ,
    F15E4RFE_RFE_id INTEGER
  ) ;
ALTER TABLE F15E4doc ADD CONSTRAINT F15E4doc_PK PRIMARY KEY ( doc_id ) ;


CREATE TABLE F15E4role_code
  (
    role_id INTEGER NOT NULL ,
    role    VARCHAR2 (50) ,
    descr   VARCHAR2 (4000)
  ) ;
ALTER TABLE F15E4role_code ADD CONSTRAINT F15E4role_code_PK PRIMARY KEY ( role_id ) ;


CREATE TABLE F15E4stat_code
  (
    code_id INTEGER NOT NULL ,
    status  VARCHAR2 (40) ,
    descr   VARCHAR2 (500)
  ) ;
ALTER TABLE F15E4stat_code ADD CONSTRAINT F15E4stat_code_PK PRIMARY KEY ( code_id ) ;


CREATE TABLE F15E4status
  (
    stat_id                INTEGER NOT NULL ,
    F15E4stat_code_code_id INTEGER ,
    active                 VARCHAR2 (1) ,
    F15E4RFE_RFE_id        INTEGER
  ) ;
ALTER TABLE F15E4status ADD CONSTRAINT F15E4status_PK PRIMARY KEY ( stat_id ) ;


CREATE TABLE F15E4tasks
  (
    task_id         INTEGER NOT NULL ,
    eff_date        DATE ,
    abbr            VARCHAR2 (20) ,
    descr           VARCHAR2 (4000) ,
    F15E4RFE_RFE_id INTEGER
  ) ;
ALTER TABLE F15E4tasks ADD CONSTRAINT F15E4tasks_PK PRIMARY KEY ( task_id ) ;


ALTER TABLE F15E4Cont ADD CONSTRAINT F15E4Cont_F15E4Emp_FK FOREIGN KEY ( F15E4Emp_emp_id ) REFERENCES F15E4Emp ( emp_id ) ;

ALTER TABLE F15E4Cont ADD CONSTRAINT F15E4Cont_F15E4RFE_FK FOREIGN KEY ( F15E4RFE_RFE_id ) REFERENCES F15E4RFE ( RFE_id ) ;

ALTER TABLE F15E4Cont ADD CONSTRAINT F15E4Cont_F15E4role_code_FK FOREIGN KEY ( F15E4role_code_role_id ) REFERENCES F15E4role_code ( role_id ) ;

ALTER TABLE F15E4Emp ADD CONSTRAINT F15E4Emp_F15E4Auth_FK FOREIGN KEY ( F15E4Auth_auth_id ) REFERENCES F15E4Auth ( auth_id ) ;

ALTER TABLE F15E4Emp ADD CONSTRAINT F15E4Emp_F15E4Lab_FK FOREIGN KEY ( F15E4Lab_lab_id ) REFERENCES F15E4Lab ( lab_id ) ;

ALTER TABLE F15E4RFE ADD CONSTRAINT F15E4RFE_F15E4Emp_FK FOREIGN KEY ( F15E4Emp_emp_id ) REFERENCES F15E4Emp ( emp_id ) ;

ALTER TABLE F15E4comm ADD CONSTRAINT F15E4comm_F15E4Emp_FK FOREIGN KEY ( F15E4Emp_emp_id ) REFERENCES F15E4Emp ( emp_id ) ;

ALTER TABLE F15E4comm ADD CONSTRAINT F15E4comm_F15E4RFE_FK FOREIGN KEY ( F15E4RFE_RFE_id ) REFERENCES F15E4RFE ( RFE_id ) ;

ALTER TABLE F15E4doc ADD CONSTRAINT F15E4doc_F15E4RFE_FK FOREIGN KEY ( F15E4RFE_RFE_id ) REFERENCES F15E4RFE ( RFE_id ) ;

ALTER TABLE F15E4status ADD CONSTRAINT F15E4status_F15E4RFE_FK FOREIGN KEY ( F15E4RFE_RFE_id ) REFERENCES F15E4RFE ( RFE_id ) ;

ALTER TABLE F15E4status ADD CONSTRAINT F15E4status_F15E4stat_code_FK FOREIGN KEY ( F15E4stat_code_code_id ) REFERENCES F15E4stat_code ( code_id ) ;

ALTER TABLE F15E4tasks ADD CONSTRAINT F15E4tasks_F15E4RFE_FK FOREIGN KEY ( F15E4RFE_RFE_id ) REFERENCES F15E4RFE ( RFE_id ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                            11
-- CREATE INDEX                             0
-- ALTER TABLE                             22
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
