DROP SEQUENCE F15E4Auth_seq ; 
create sequence F15E4Auth_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4Auth_PK_trig 
before insert on F15E4Auth
for each row 
begin 
select F15E4Auth_seq.nextval into :new.auth_id from dual; 
end; 
/
alter table F15E4Auth add created date ; 
alter table F15E4Auth add created_by VARCHAR2 (255) ; 
alter table F15E4Auth add row_version_number integer ; 
alter table F15E4Auth add updated date ; 
alter table F15E4Auth add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4Auth_AUD_trig 
before insert or update on F15E4Auth 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15E4Emp_seq ; 
create sequence F15E4Emp_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4Emp_PK_trig 
before insert on F15E4Emp
for each row 
begin 
select F15E4Emp_seq.nextval into :new.emp_id from dual; 
end; 
/
alter table F15E4Emp add created date ; 
alter table F15E4Emp add created_by VARCHAR2 (255) ; 
alter table F15E4Emp add row_version_number integer ; 
alter table F15E4Emp add updated date ; 
alter table F15E4Emp add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4Emp_AUD_trig 
before insert or update on F15E4Emp 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15E4Lab_seq ; 
create sequence F15E4Lab_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4Lab_PK_trig 
before insert on F15E4Lab
for each row 
begin 
select F15E4Lab_seq.nextval into :new.lab_id from dual; 
end; 
/
alter table F15E4Lab add created date ; 
alter table F15E4Lab add created_by VARCHAR2 (255) ; 
alter table F15E4Lab add row_version_number integer ; 
alter table F15E4Lab add updated date ; 
alter table F15E4Lab add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4Lab_AUD_trig 
before insert or update on F15E4Lab 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15E4RFE_seq ; 
create sequence F15E4RFE_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4RFE_PK_trig 
before insert on F15E4RFE
for each row 
begin 
select F15E4RFE_seq.nextval into :new.RFE_id from dual; 
end; 
/
alter table F15E4RFE add created date ; 
alter table F15E4RFE add created_by VARCHAR2 (255) ; 
alter table F15E4RFE add row_version_number integer ; 
alter table F15E4RFE add updated date ; 
alter table F15E4RFE add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4RFE_AUD_trig 
before insert or update on F15E4RFE 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15E4comm_seq ; 
create sequence F15E4comm_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4comm_PK_trig 
before insert on F15E4comm
for each row 
begin 
select F15E4comm_seq.nextval into :new.comm_id from dual; 
end; 
/
alter table F15E4comm add created date ; 
alter table F15E4comm add created_by VARCHAR2 (255) ; 
alter table F15E4comm add row_version_number integer ; 
alter table F15E4comm add updated date ; 
alter table F15E4comm add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4comm_AUD_trig 
before insert or update on F15E4comm 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15E4doc_seq ; 
create sequence F15E4doc_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4doc_PK_trig 
before insert on F15E4doc
for each row 
begin 
select F15E4doc_seq.nextval into :new.doc_id from dual; 
end; 
/
alter table F15E4doc add created date ; 
alter table F15E4doc add created_by VARCHAR2 (255) ; 
alter table F15E4doc add row_version_number integer ; 
alter table F15E4doc add updated date ; 
alter table F15E4doc add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4doc_AUD_trig 
before insert or update on F15E4doc 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15E4role_code_seq ; 
create sequence F15E4role_code_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4role_code_PK_trig 
before insert on F15E4role_code
for each row 
begin 
select F15E4role_code_seq.nextval into :new.role_id from dual; 
end; 
/
alter table F15E4role_code add created date ; 
alter table F15E4role_code add created_by VARCHAR2 (255) ; 
alter table F15E4role_code add row_version_number integer ; 
alter table F15E4role_code add updated date ; 
alter table F15E4role_code add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4role_code_AUD_trig 
before insert or update on F15E4role_code 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15E4stat_code_seq ; 
create sequence F15E4stat_code_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4stat_code_PK_trig 
before insert on F15E4stat_code
for each row 
begin 
select F15E4stat_code_seq.nextval into :new.code_id from dual; 
end; 
/
alter table F15E4stat_code add created date ; 
alter table F15E4stat_code add created_by VARCHAR2 (255) ; 
alter table F15E4stat_code add row_version_number integer ; 
alter table F15E4stat_code add updated date ; 
alter table F15E4stat_code add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4stat_code_AUD_trig 
before insert or update on F15E4stat_code 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15E4status_seq ; 
create sequence F15E4status_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4status_PK_trig 
before insert on F15E4status
for each row 
begin 
select F15E4status_seq.nextval into :new.stat_id from dual; 
end; 
/
alter table F15E4status add created date ; 
alter table F15E4status add created_by VARCHAR2 (255) ; 
alter table F15E4status add row_version_number integer ; 
alter table F15E4status add updated date ; 
alter table F15E4status add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4status_AUD_trig 
before insert or update on F15E4status 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP SEQUENCE F15E4tasks_seq ; 
create sequence F15E4tasks_seq 
start with 100 
increment by 1 
nomaxvalue 
;

create or replace trigger F15E4tasks_PK_trig 
before insert on F15E4tasks
for each row 
begin 
select F15E4tasks_seq.nextval into :new.task_id from dual; 
end; 
/
alter table F15E4tasks add created date ; 
alter table F15E4tasks add created_by VARCHAR2 (255) ; 
alter table F15E4tasks add row_version_number integer ; 
alter table F15E4tasks add updated date ; 
alter table F15E4tasks add updated_by VARCHAR2 (255) ; 
/
create or replace trigger F15E4tasks_AUD_trig 
before insert or update on F15E4tasks 
for each row 
begin 
  if inserting then 
    :new.created := localtimestamp; 
    :new.created_by := nvl(wwv_flow.g_user,user); 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
    :new.row_version_number := 1; 
  elsif updating then 
    :new.row_version_number := nvl(:old.row_version_number,1) + 1; 
  end if; 
  if inserting or updating then 
    :new.updated := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
  end if; 
end; 
/

DROP INDEX F15E4Emp_emp_id_FK_0 ;
CREATE INDEX F15E4Emp_emp_id_FK_0 ON F15E4Cont(F15E4Emp_emp_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_1 ;
CREATE INDEX F15E4RFE_RFE_id_FK_1 ON F15E4Cont(F15E4RFE_RFE_id) ;
DROP INDEX F15E4role_code_role_id_FK_2 ;
CREATE INDEX F15E4role_code_role_id_FK_2 ON F15E4Cont(F15E4role_code_role_id) ;
DROP INDEX F15E4Auth_auth_id_FK_3 ;
CREATE INDEX F15E4Auth_auth_id_FK_3 ON F15E4Emp(F15E4Auth_auth_id) ;
DROP INDEX F15E4Lab_lab_id_FK_4 ;
CREATE INDEX F15E4Lab_lab_id_FK_4 ON F15E4Emp(F15E4Lab_lab_id) ;
DROP INDEX F15E4Emp_emp_id_FK_5 ;
CREATE INDEX F15E4Emp_emp_id_FK_5 ON F15E4RFE(F15E4Emp_emp_id) ;
DROP INDEX F15E4Emp_emp_id_FK_6 ;
CREATE INDEX F15E4Emp_emp_id_FK_6 ON F15E4comm(F15E4Emp_emp_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_7 ;
CREATE INDEX F15E4RFE_RFE_id_FK_7 ON F15E4comm(F15E4RFE_RFE_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_8 ;
CREATE INDEX F15E4RFE_RFE_id_FK_8 ON F15E4doc(F15E4RFE_RFE_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_9 ;
CREATE INDEX F15E4RFE_RFE_id_FK_9 ON F15E4status(F15E4RFE_RFE_id) ;
DROP INDEX F15E4stat_code_code_id_FK_10 ;
CREATE INDEX F15E4stat_code_code_id_FK_10 ON F15E4status(F15E4stat_code_code_id) ;
DROP INDEX F15E4RFE_RFE_id_FK_11 ;
CREATE INDEX F15E4RFE_RFE_id_FK_11 ON F15E4tasks(F15E4RFE_RFE_id) ;
