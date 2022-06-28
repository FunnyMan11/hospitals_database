create tablespace hospitalsSQL 
datafile 'D:\db\hospitalsSQL.dat' size 20m 
default storage (initial 128k next 128k
minextents 1 maxextents 999)

online;

create user hospitals2 identified by hospitals2 default tablespace hospitalsSQL
temporary tablespace temp
profile default account unlock; 

grant connect, resource to hospitals2;
grant unlimited tablespace to hospitals2;
grant ALTER, DELETE, INSERT, UPDATE, SELECT, REFERENCES on "HOSPITALS2"."BILL" to "SYSTEM" ;
grant ALTER, DELETE, INSERT, UPDATE, SELECT, REFERENCES on "HOSPITALS2"."DOCTORS2" to "SYSTEM" ;
grant ALTER, DELETE, INSERT, UPDATE, SELECT, REFERENCES on "HOSPITALS2"."HOSPITALS" to "SYSTEM";
grant ALTER, DELETE, INSERT, UPDATE, SELECT, REFERENCES on "HOSPITALS2"."PATIENTS2" to "SYSTEM";
grant ALTER, DELETE, INSERT, UPDATE, SELECT, REFERENCES on "HOSPITALS2"."ROOMS" to "SYSTEM" ; 
