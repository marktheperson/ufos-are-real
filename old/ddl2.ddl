DROP SEQUENCE F15E4RFE_seq ; 
create sequence F15E4RFE_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4RFE_PK_trig 
; 

create or replace trigger F15E4RFE_PK_trig 
before insert on F15E4RFE
for each row 
begin 
select F15E4RFE_seq.nextval into :new.rfe_id from dual; 
end; 
/

DROP SEQUENCE F15E4RFE_doc_seq ; 
create sequence F15E4RFE_doc_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4RFE_doc_PK_trig 
; 

create or replace trigger F15E4RFE_doc_PK_trig 
before insert on F15E4RFE_doc
for each row 
begin 
select F15E4RFE_doc_seq.nextval into :new.doc_id from dual; 
end; 
/

DROP SEQUENCE F15E4comment_seq ; 
create sequence F15E4comment_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4comment_PK_trig 
; 

create or replace trigger F15E4comment_PK_trig 
before insert on F15E4comment
for each row 
begin 
select F15E4comment_seq.nextval into :new.comment_id from dual; 
end; 
/

DROP SEQUENCE F15E4lab_seq ; 
create sequence F15E4lab_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4lab_PK_trig 
; 

create or replace trigger F15E4lab_PK_trig 
before insert on F15E4lab
for each row 
begin 
select F15E4lab_seq.nextval into :new.lab_id from dual; 
end; 
/

DROP SEQUENCE F15E4project_seq ; 
create sequence F15E4project_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4project_PK_trig 
; 

create or replace trigger F15E4project_PK_trig 
before insert on F15E4project
for each row 
begin 
select F15E4project_seq.nextval into :new.project_id from dual; 
end; 
/

DROP SEQUENCE F15E4stat_seq ; 
create sequence F15E4stat_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4stat_PK_trig 
; 

create or replace trigger F15E4stat_PK_trig 
before insert on F15E4stat
for each row 
begin 
select F15E4stat_seq.nextval into :new.stat_id from dual; 
end; 
/

DROP SEQUENCE F15E4stat_code_seq ; 
create sequence F15E4stat_code_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4stat_code_PK_trig 
; 

create or replace trigger F15E4stat_code_PK_trig 
before insert on F15E4stat_code
for each row 
begin 
select F15E4stat_code_seq.nextval into :new.stat_code from dual; 
end; 
/

DROP SEQUENCE F15E4stat_hist_seq ; 
create sequence F15E4stat_hist_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4stat_hist_PK_trig 
; 

create or replace trigger F15E4stat_hist_PK_trig 
before insert on F15E4stat_hist
for each row 
begin 
select F15E4stat_hist_seq.nextval into :new.stat_hist_id from dual; 
end; 
/

DROP SEQUENCE F15E4contact_seq ; 
create sequence F15E4contact_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4contact_PK_trig 
; 

create or replace trigger F15E4contact_PK_trig 
before insert on F15E4contact
for each row 
begin 
select F15E4contact_seq.nextval into :new.contact_id from dual; 
end; 
/

DROP SEQUENCE F15E4emp_seq ; 
create sequence F15E4emp_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4emp_PK_trig 
; 

create or replace trigger F15E4emp_PK_trig 
before insert on F15E4emp
for each row 
begin 
select F15E4emp_seq.nextval into :new.emp_id from dual; 
end; 
/

DROP SEQUENCE F15E4role_cd_seq ; 
create sequence F15E4role_cd_seq 
start with 100 
increment by 1 
nomaxvalue 
;
DROP TRIGGER F15E4role_cd_PK_trig 
; 

create or replace trigger F15E4role_cd_PK_trig 
before insert on F15E4role_cd
for each row 
begin 
select F15E4role_cd_seq.nextval into :new.role_code from dual; 
end; 
/

-- Table Relation_3 has a compound primary key so no sequence or trigger was created for it.
--DROP INDEX F15E4stat_stat_id_FK_0 ;
--CREATE INDEX F15E4stat_stat_id_FK_0 ON F15E4RFE(F15E4stat_stat_id) ;
DROP INDEX F15E4RFE_rfe_id_FK_1 ;
CREATE INDEX F15E4RFE_rfe_id_FK_1 ON F15E4RFE_doc(F15E4RFE_rfe_id) ;
DROP INDEX F15E4RFE_rfe_id_FK_2 ;
CREATE INDEX F15E4RFE_rfe_id_FK_2 ON F15E4RFE_tasks(F15E4RFE_rfe_id) ;
DROP INDEX F15E4RFE_rfe_id_FK_3 ;
CREATE INDEX F15E4RFE_rfe_id_FK_3 ON F15E4comment(F15E4RFE_rfe_id) ;
DROP INDEX F15E4emp_emp_id_FK_4 ;
CREATE INDEX F15E4emp_emp_id_FK_4 ON F15E4comment(F15E4emp_emp_id) ;
DROP INDEX F15E4lab_lab_id_FK_5 ;
CREATE INDEX F15E4lab_lab_id_FK_5 ON F15E4project(F15E4lab_lab_id) ;
--DROP INDEX F15E4RFE_rfe_id_FK_6 ;
--CREATE INDEX F15E4RFE_rfe_id_FK_6 ON F15E4stat(F15E4RFE_rfe_id) ;
DROP INDEX F15E4stat_code_stat_co_FK_7 ;
CREATE INDEX F15E4stat_code_stat_co_FK_7 ON F15E4stat(F15E4stat_code_stat_code) ;
DROP INDEX F15E4emp_emp_id_FK_8 ;
CREATE INDEX F15E4emp_emp_id_FK_8 ON F15E4stat(F15E4emp_emp_id) ;
DROP INDEX F15E4RFE_rfe_id_FK_9 ;
CREATE INDEX F15E4RFE_rfe_id_FK_9 ON F15E4stat_hist(F15E4RFE_rfe_id) ;
DROP INDEX F15E4stat_stat_id_FK_10 ;
CREATE INDEX F15E4stat_stat_id_FK_10 ON F15E4stat_hist(F15E4stat_stat_id) ;
DROP INDEX F15E4RFE_rfe_id_FK_11 ;
CREATE INDEX F15E4RFE_rfe_id_FK_11 ON F15E4contact(F15E4RFE_rfe_id) ;
DROP INDEX F15E4emp_emp_id_FK_12 ;
CREATE INDEX F15E4emp_emp_id_FK_12 ON F15E4contact(F15E4emp_emp_id) ;
DROP INDEX F15E4role_cd_role_code_FK_13 ;
CREATE INDEX F15E4role_cd_role_code_FK_13 ON F15E4contact(F15E4role_cd_role_code) ;
DROP INDEX F15E4lab_lab_id_FK_14 ;
CREATE INDEX F15E4lab_lab_id_FK_14 ON F15E4emp(F15E4lab_lab_id) ;
DROP INDEX F15E4emp_emp_id_FK_15 ;
CREATE INDEX F15E4emp_emp_id_FK_15 ON Relation_3(F15E4emp_emp_id) ;
DROP INDEX F15E4RFE_rfe_id_FK_16 ;
CREATE INDEX F15E4RFE_rfe_id_FK_16 ON Relation_3(F15E4RFE_rfe_id) ;