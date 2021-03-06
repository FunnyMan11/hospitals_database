CREATE TABLE BILL 
(
  BILL_NO VARCHAR(40) NOT NULL 
, PID VARCHAR(5) NOT NULL
, DOCTOR_CHARGE NUMBER NOT NULL 
, MEDICINE_CHARGE NUMBER NOT NULL 
, ROOM_CHARGE NUMBER  
, LAB_CHARGE NUMBER 
, CONSTRAINT BILL_PK PRIMARY KEY 
  (
    BILL_NO
  )
  ENABLE 
);

ALTER TABLE BILL 
DROP CONSTRAINT BILL_PK;

ALTER TABLE BILL 
DROP COLUMN PID;

ALTER TABLE BILL  
MODIFY (BILL_NO NUMBER );

ALTER TABLE BILL
ADD CONSTRAINT BILL_PK PRIMARY KEY 
( 
 BILL_NO 
)
ENABLE;
  
  CREATE TABLE ROOMS 
(
  ROOM_NUM NUMBER NOT NULL 
, ROOM_TYPE VARCHAR2(40) 
, STATUS VARCHAR2(30) 
, CONSTRAINT ROOMS_PK PRIMARY KEY 
  (
    ROOM_NUM 
  )
  ENABLE 
);
CREATE TABLE PATIENTS2 
(
  PATIENT_ID NUMBER NOT NULL 
, PATIENT_USRNAME VARCHAR2(30) NOT NULL 
, PATIENT_LASTNAME VARCHAR2(40) NOT NULL 
, PT_PHONE_NUM VARCHAR2(40) 
, PT_EMAIL VARCHAR2(30) 
, PT_ADDRESS VARCHAR2(40)
, DOCTORS NUMBER NOT NULL 
, HOSPITALS NUMBER NOT NULL
, BILL_ID NUMBER NOT NULL
, CONSTRAINT PATIENTS2_PK PRIMARY KEY 
  (
    ID 
  )
  ENABLE 
);

ALTER TABLE PATIENTS2
ADD CONSTRAINT PATIENTS2_PK PRIMARY KEY 
(
  PATIENT_ID 
)
ENABLE;



CREATE TABLE DOCTORS2 
(
  DOCTOR_ID NUMBER NOT NULL 
, DOCT_USERNAME VARCHAR2(30) NOT NULL 
, DOCT_LASTNAME VARCHAR2(40) NOT NULL 
, DOCT_PHONE_NUM VARCHAR2(30) 
, DOCT_ADDRESS VARCHAR2(40) 
, DOCT_EMAIL VARCHAR2(50) 
, ROOM NUMBER NOT NULL
, HOSPITALS NUMBER NOT NULL
, CONSTRAINT DOCTORS2_PK PRIMARY KEY 
  (
    ID 
  )
  ENABLE 
);

CREATE TABLE HOSPITALS 
(
  HOSPITAL_ID NUMBER NOT NULL 
, HOSPITAL_NAME VARCHAR2(40) NOT NULL 
, HOS_ADDRESS VARCHAR2(40) 
, ROOM_COUNT NUMBER NOT NULL 
, DOCTORS_COUNT NUMBER NOT NULL 
, CONSTRAINT HOSPITALS_PK PRIMARY KEY 
  (
    ID 
  )
  ENABLE 
);

ALTER TABLE PATIENTS2
ADD FOREIGN KEY (DOCTORS) REFERENCES DOCTORS2(DOCTOR_ID);

ALTER TABLE DOCTORS2
ADD FOREIGN KEY (HOSPITALS) REFERENCES HOSPITALS(HOSPITAL_ID);

ALTER TABLE PATIENTS2
ADD FOREIGN KEY (HOSPITALS) REFERENCES HOSPITALS(HOSPITAL_ID);

ALTER TABLE PATIENTS2
ADD FOREIGN KEY (BILL_ID) REFERENCES BILL(BILL_NO);


ALTER TABLE DOCTORS2
ADD FOREIGN KEY (ROOM) REFERENCES ROOMS(ROOM_NUM);

INSERT INTO HOSPITALS
(HOSPITAL_ID,HOSPITAL_NAME,HOS_ADDRESS,ROOM_COUNT,DOCTORS_COUNT)
VALUES
(1,'EVEX','LUBLIANA ST 13/6',240,150);

INSERT INTO HOSPITALS
(HOSPITAL_ID,HOSPITAL_NAME,HOS_ADDRESS,ROOM_COUNT,DOCTORS_COUNT)
VALUES
(2,'MARDALEISHVILI MEDICAL CENTER','LEVAN CHARKVIANI ST #8',60,70);

INSERT INTO HOSPITALS
(HOSPITAL_ID,HOSPITAL_NAME,HOS_ADDRESS,ROOM_COUNT,DOCTORS_COUNT)
VALUES
(3,'AVERSI','CHICHAVA ST #7',150,150);

INSERT INTO HOSPITALS
(HOSPITAL_ID,HOSPITAL_NAME,HOS_ADDRESS,ROOM_COUNT,DOCTORS_COUNT)
VALUES
(4,'NEW HOSPITALS','KRWANISI ST #12',120,30);

INSERT INTO HOSPITALS
(HOSPITAL_ID,HOSPITAL_NAME,HOS_ADDRESS,ROOM_COUNT,DOCTORS_COUNT)
VALUES
(5,'GEO HOSPITALS','GVINJILIA ST #5',80,68);

INSERT INTO HOSPITALS
(HOSPITAL_ID,HOSPITAL_NAME,HOS_ADDRESS,ROOM_COUNT,DOCTORS_COUNT)
VALUES
(6,'DAVID TATISHVILI CLINIC','ABULADZE ST #7',200,100);

INSERT INTO HOSPITALS
(HOSPITAL_ID,HOSPITAL_NAME,HOS_ADDRESS,ROOM_COUNT,DOCTORS_COUNT)
VALUES
(7,'NEWMED CLINIC','MARIJANI ST #4',87,88);

INSERT INTO HOSPITALS
(HOSPITAL_ID,HOSPITAL_NAME,HOS_ADDRESS,ROOM_COUNT,DOCTORS_COUNT)
VALUES
(8,'TEAM-TBILISI MEDICAL INSTITUTION','TSINTSADZE ST #16',67,32);

INSERT INTO HOSPITALS
(HOSPITAL_ID,HOSPITAL_NAME,HOS_ADDRESS,ROOM_COUNT,DOCTORS_COUNT)
VALUES
(9,'ENMEDICI','TSINTSADZE ST #9',35,28);

INSERT INTO HOSPITALS
(HOSPITAL_ID,HOSPITAL_NAME,HOS_ADDRESS,ROOM_COUNT,DOCTORS_COUNT)
VALUES
(10,'MRCHEVELI CLINIC','KHASBEGI AVENUE #9',20,25);

INSERT INTO HOSPITALS
(HOSPITAL_ID,HOSPITAL_NAME,HOS_ADDRESS,ROOM_COUNT,DOCTORS_COUNT)
VALUES
(11,'MEDIC-GEORGIA','CONSTITUTION ST #13',23,27);

INSERT INTO ROOMS
(ROOM_NUM,ROOM_TYPE,STATUS)
VALUES
(1,'REGISTRATION','ALWAYS ACTIVE');

INSERT INTO ROOMS
(ROOM_NUM,ROOM_TYPE,STATUS)
VALUES
(2,'CASUALTY','ALWAYS ACTIVE');

INSERT INTO ROOMS
(ROOM_NUM,ROOM_TYPE,STATUS)
VALUES
(3,'CONSULTING ROOM','NOT ACTIVE');

INSERT INTO ROOMS
(ROOM_NUM,ROOM_TYPE,STATUS)
VALUES
(4,'PHARMACY',' ACTIVE ');

INSERT INTO ROOMS
(ROOM_NUM,ROOM_TYPE,STATUS)
VALUES
(5,'PADDED CELL',' ACTIVE ');

INSERT INTO ROOMS
(ROOM_NUM,ROOM_TYPE,STATUS)
VALUES
(6,'SURGERY',' ALWAYES ACTIVE ');

INSERT INTO ROOMS
(ROOM_NUM,ROOM_TYPE,STATUS)
VALUES
(7,'CARDIOLOGY ',' ACTIVE ');

INSERT INTO ROOMS
(ROOM_NUM,ROOM_TYPE,STATUS)
VALUES
(8,'GYNAECOLOGY ',' NOT ACTIVE ');

INSERT INTO ROOMS
(ROOM_NUM,ROOM_TYPE,STATUS)
VALUES
(9,'NEUROLOGY ',' ACTIVE ');

INSERT INTO ROOMS
(ROOM_NUM,ROOM_TYPE,STATUS)
VALUES
(10,'PEDIADRICS',' ACTIVE ');

INSERT INTO ROOMS
(ROOM_NUM,ROOM_TYPE,STATUS)
VALUES
(11,'OPTHAMOLOGY',' ACTIVE ');

INSERT INTO ROOMS
(ROOM_NUM,ROOM_TYPE,STATUS)
VALUES
(12,'ONCOLOGY',' ACTIVE ');

INSERT INTO ROOMS
(ROOM_NUM,ROOM_TYPE,STATUS)
VALUES
(13,'DISPENSARY',' ACTIVE ONLY DAYTIME');

INSERT INTO ROOMS
(ROOM_NUM,ROOM_TYPE,STATUS)
VALUES
(14,'AMBULATORY',' ACTIVE ');

INSERT INTO ROOMS
(ROOM_NUM,ROOM_TYPE,STATUS)
VALUES
(15,'ANGIOLOGY',' ACTIVE');

INSERT INTO ROOMS
(ROOM_NUM,ROOM_TYPE,STATUS)
VALUES
(16,'IMMUNOLOGY',' ACTIVE ');

INSERT INTO ROOMS
(ROOM_NUM,ROOM_TYPE,STATUS)
VALUES
(17,'LABURATORY',' ACTIVE ONLY DAYTIME');

INSERT INTO ROOMS
(ROOM_NUM,ROOM_TYPE,STATUS)
VALUES
(18,'TRAUMATOLOGY',' ACTIVE ');

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(2,'MAIA','BEGASHVILI','+995599230102','MACHAVARIANI st.N12','MAIA.BEGASHVILI@yahoo.com',8,2 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(1,'Tamari','Javaxadze','+995599234041','lubliana st.','Tamari.javaxadze@yahoo.com',9,1 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(2,'MAIA','BEGASHVILI','+995599230102','MACHAVARIANI st.N12','MAIA.BEGASHVILI@yahoo.com',8,2 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(3,'GIORGI','DZAGNIDZE','+995599230102','CHAVCHAVADZE st.N2','GIORGI.DZAGNIDZE@yahoo.com',12,6 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(4,'ZVIAD','MATOSHVILI','+995599345132','LUBLIANA st.N9','ZVIAD.MOTOSHVILI@yahoo.com',7,4 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(5,'LEVAN','KHURASHVILI','+995597221233','CINCADZE st.N10','LEVAN.KHURASHVILI@yahoo.com',7, 8);

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(6,'MAIA','XUTSISHVILI','+995555291998','RUSTAVELI st.N44','MAIA.XUTSISHVILI@yahoo.com',17,6 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(7,'TAMAR','JOJISHVILI','+995597182930','BARATASHVILI st.N1','TAMAR.JOJISHVILI@yahoo.com',17,6 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(8,'NIKOLOZ','JORBENADZE','+995599102345','YAZBEGI st.N22','NIKOLOZ.JORBENIDZE@yahoo.com',16,3 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(9,'RUSUDAN','RATIANI','+995597189880','MELIQISHVILI AVENUE N12','RUSUDAN.RATIANI@yahoo.com',16,9 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(10,'KONSTANIN','MARDALEISHVILI','+995599223123','VAJA FSHAVELA st.N65','KONSTANTIN.MARDALEISHVILI@yahoo.com',6,2 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(11,'GIVI','CECXLADZE','+995598293247','LUBLIANA st.N35','GIVI.CECXLADZE@yahoo.com',6,5 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(12,'QETEVAN','BOXOCHADZE','+995597887787','KVANTALIANIS st.N40','QETEVAN.BOXOCHADZE@yahoo.com',8,7 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(13,'MAKA','LOMIDZE','+995599377389','MACHABELI st.N12','MAKA.LOMIDZE@yahoo.com',10,10);

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(14,'ALEXANDRE','PAVLIASHVILI','+995599211315','SAMGORI st.N5','ALEXANDRE.PAVLENISHVILI@yahoo.com',4,11 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(15,'GRIGOL','QAMUSHADZE','+995599123120','QSANI st.N12','GRIGOL.QAMUSHADZE@yahoo.com',11,4 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(16,'GIORGI','BREGADZE','+995597889818','PUSHKINI st.N14','GIORGI.BREGADZE@yahoo.com',15,4 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(17,'LEVAN','NACHKEBIA','+995599189880','G.SAAKADZE st.N40','LEVAN.NACHKEBIA@yahoo.com',18,6 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(18,'SABA','DZVELAIA','+995599221323','RUSTAVELI st.N41','SABA.DZVELAIA@yahoo.com',1,2 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(19,'MAMUKA','MACHABELI','+995597889887','ROBAKIDZE st.N10','MAMUKA.MACHABELI@yahoo.com',2,5 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(20,'SALOME','TATISHVILI','+995599123243','POLITOVSKAIA st.N51','SALOME.TATISHVILI@yahoo.com',3,7 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(21,'KAXABER','KIKABIDZE','+995598909178','KUTAISI st.N25','KAXABER.KIKABIDZE@yahoo.com',5,9 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(22,'MARIAM','MODEBADZE','+995591292122','SANDRO EULI st.N4','MARIAM.MODEBADZE@yahoo.com',13,10 );

INSERT INTO DOCTORS2
(DOCTOR_ID,DOCT_USERNAME ,DOCT_LASTNAME,DOCT_PHONE_NUM,DOCT_ADDRESS,DOCT_EMAIL, ROOM, HOSPITALS )
VALUES
(23,'LOLITA','IASAMIDZE','+995599212340','MCXETA st.N81','LOLITA.IASAMIDZE@yahoo.com',14,7 );

INSERT INTO BILL
(BILL_NO,DOCTOR_CHARGE,MEDICINE_CHARGE,ROOM_CHARGE,LAB_CHARGE)
VALUES
(1,2000,1000,200,150);

INSERT INTO BILL
(BILL_NO,DOCTOR_CHARGE,MEDICINE_CHARGE,ROOM_CHARGE,LAB_CHARGE)
VALUES
(2,3000,1500,100,70);

INSERT INTO BILL
(BILL_NO,DOCTOR_CHARGE,MEDICINE_CHARGE,ROOM_CHARGE,LAB_CHARGE)
VALUES
(3,2500,1200,130,200);

INSERT INTO BILL
(BILL_NO,DOCTOR_CHARGE,MEDICINE_CHARGE,ROOM_CHARGE,LAB_CHARGE)
VALUES
(4,10000,1500,300,500);

INSERT INTO BILL
(BILL_NO,DOCTOR_CHARGE,MEDICINE_CHARGE,ROOM_CHARGE,LAB_CHARGE)
VALUES
(5,400,140,50,80);

INSERT INTO BILL
(BILL_NO,DOCTOR_CHARGE,MEDICINE_CHARGE,ROOM_CHARGE,LAB_CHARGE)
VALUES
(6,150,200,50,86);

INSERT INTO BILL
(BILL_NO,DOCTOR_CHARGE,MEDICINE_CHARGE,ROOM_CHARGE,LAB_CHARGE)
VALUES
(7,1240,563,100,150);

INSERT INTO BILL
(BILL_NO,DOCTOR_CHARGE,MEDICINE_CHARGE,LAB_CHARGE)
VALUES
(8,80,100,150);

INSERT INTO BILL
(BILL_NO,DOCTOR_CHARGE,MEDICINE_CHARGE)
VALUES
(9,75,200);

INSERT INTO BILL
(BILL_NO,DOCTOR_CHARGE,MEDICINE_CHARGE,ROOM_CHARGE,LAB_CHARGE)
VALUES
(10,3250,2000,250,200);

INSERT INTO PATIENTS2
(PATIENT_ID,PATIENT_USRNAME,PATIENT_LASTNAME,PT_PHONE_NUM,PT_EMAIL,DOCTORS,HOSPITALS,PT_ADDRESS,BILL_ID)
VALUES
(1,'PIRO','KOBULADZE','+995595334445','PIRO.KOBULADZE@BULKI.COM',12,7,'KUMISI',1);

INSERT INTO PATIENTS2
(PATIENT_ID,PATIENT_USRNAME,PATIENT_LASTNAME,PT_PHONE_NUM,PT_EMAIL,DOCTORS,HOSPITALS,PT_ADDRESS,BILL_ID)
VALUES
(2,'SANDRO','QEDZBAIA','+995555981029','SANDRO.QEDZBAIA@YAHOO.COM',1,1,'SAMDTREDIA',2);

INSERT INTO PATIENTS2
(PATIENT_ID,PATIENT_USRNAME,PATIENT_LASTNAME,PT_PHONE_NUM,PT_EMAIL,DOCTORS,HOSPITALS,PT_ADDRESS,BILL_ID)
VALUES
(3,'LUKA','ABULADZE','+995599210302','LUKA.ABULADZE@YAHOO.COM',3,6,'ZUGDIDI',3);

INSERT INTO PATIENTS2
(PATIENT_ID,PATIENT_USRNAME,PATIENT_LASTNAME,PT_PHONE_NUM,PT_EMAIL,DOCTORS,HOSPITALS,PT_ADDRESS,BILL_ID)
VALUES
(4,'MARIAM','LOBJANIDZE','+995599102131','MARIAM.LOBJANIDZE@YAHOO.COM',10,2,'TBILISI',4);

INSERT INTO PATIENTS2
(PATIENT_ID,PATIENT_USRNAME,PATIENT_LASTNAME,PT_PHONE_NUM,PT_EMAIL,DOCTORS,HOSPITALS,PT_ADDRESS,BILL_ID)
VALUES
(5,'ELENE','KIKNADZE','+995598281888','ELENE.KIKNADZE@YAHOO.COM',4,4,'TBILISI',10);

INSERT INTO PATIENTS2
(PATIENT_ID,PATIENT_USRNAME,PATIENT_LASTNAME,PT_PHONE_NUM,PT_EMAIL,DOCTORS,HOSPITALS,PT_ADDRESS,BILL_ID)
VALUES
(6,'DATO','LORTQIPANIDZE','+995599277372','DATO.LORTQIPANIDZE@YAHOO.COM',9,9,'POTI',5);

INSERT INTO PATIENTS2
(PATIENT_ID,PATIENT_USRNAME,PATIENT_LASTNAME,PT_PHONE_NUM,PT_EMAIL,DOCTORS,HOSPITALS,PT_ADDRESS,BILL_ID)
VALUES
(7,'SANDRO','CHAVLEISHVILI','+995599221231','SANDRO.CHAVLEISHVILI@YAHOO.COM',14,6,'POTI',7);

INSERT INTO PATIENTS2
(PATIENT_ID,PATIENT_USRNAME,PATIENT_LASTNAME,PT_PHONE_NUM,PT_EMAIL,DOCTORS,HOSPITALS,PT_ADDRESS,BILL_ID)
VALUES
(8,'LIKA','GAGUA','+995599213442','LIKA.GAGUA@YAHOO.COM',20,7,'TBILISI',6);

INSERT INTO PATIENTS2
(PATIENT_ID,PATIENT_USRNAME,PATIENT_LASTNAME,PT_PHONE_NUM,PT_EMAIL,DOCTORS,HOSPITALS,PT_ADDRESS,BILL_ID)
VALUES
(9,'RATI','RUXADZE','+995599108090','RATI.RUXADZE@YAHOO.COM',13,10,'KUTAISI',8);

INSERT INTO PATIENTS2
(PATIENT_ID,PATIENT_USRNAME,PATIENT_LASTNAME,PT_PHONE_NUM,PT_EMAIL,DOCTORS,HOSPITALS,PT_ADDRESS,BILL_ID)
VALUES
(10,'NATIA','SULABERIDZE','+995599299090','NATIA.SULABERIDZE@YAHOO.COM',20,7,'TBILISI',9);




