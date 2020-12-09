--------------------------------------------------------
--  File created - Wednesday-December-09-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ADMIN_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HOMELOAN"."ADMIN_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 20201 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence HIBERNATE_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HOMELOAN"."HIBERNATE_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOAN_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HOMELOAN"."LOAN_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1234000001 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USER_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "HOMELOAN"."USER_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 20221 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "HOMELOAN"."ADMIN" 
   (	"ADMIN_ID" NUMBER(10,0), 
	"ADMIN_EMAIL" VARCHAR2(255 CHAR), 
	"ADMIN_FIRST_NAME" VARCHAR2(255 CHAR), 
	"ADMIN_LAST_NAME" VARCHAR2(255 CHAR), 
	"ADMIN_PASSWORD" VARCHAR2(255 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table APPLICATION
--------------------------------------------------------

  CREATE TABLE "HOMELOAN"."APPLICATION" 
   (	"APPLICATION_ID" NUMBER(10,0), 
	"AADHAR_CARD" VARCHAR2(255 CHAR), 
	"AADHAR_NUMBER" VARCHAR2(255 CHAR), 
	"ADDRESS" VARCHAR2(255 CHAR), 
	"APPOINTMENT_DATE" DATE, 
	"GENDER" VARCHAR2(255 CHAR), 
	"INCOME" FLOAT(126), 
	"LETTER_OF_AGREEMENT" VARCHAR2(255 CHAR), 
	"LOAN_AMOUNT" FLOAT(126), 
	"LOAN_STATUS" VARCHAR2(255 CHAR), 
	"MAX_LOAN_AMOUNT" FLOAT(126), 
	"NATIONALITY" VARCHAR2(255 CHAR), 
	"NO_OBJECTION_CERTI" VARCHAR2(255 CHAR), 
	"ORGANISATION" VARCHAR2(255 CHAR), 
	"PAN_CARD" VARCHAR2(255 CHAR), 
	"PROPERTY_COST" FLOAT(126), 
	"PROPERTY_LOCATION" VARCHAR2(255 CHAR), 
	"PROPERTY_TYPE" VARCHAR2(255 CHAR), 
	"RETIREMENT_AGE" NUMBER(10,0), 
	"SALARY_SLIP" VARCHAR2(255 CHAR), 
	"SALE_AGREEMENT" VARCHAR2(255 CHAR), 
	"TENURE" NUMBER(10,0), 
	"USERPAN" VARCHAR2(255 CHAR), 
	"CUSTOMER_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "HOMELOAN"."CUSTOMER" 
   (	"CUSTOMER_ID" NUMBER(10,0), 
	"CUSTOMER_CITY" VARCHAR2(255 CHAR), 
	"CUSTOMER_EMAIL" VARCHAR2(255 CHAR), 
	"CUSTOMER_EMPLOYMENT_TYPE" VARCHAR2(255 CHAR), 
	"CUSTOMER_FIRST_NAME" VARCHAR2(255 CHAR), 
	"CUSTOMER_LAST_NAME" VARCHAR2(255 CHAR), 
	"CUSTOMER_MOBILE_NUMBER" VARCHAR2(255 CHAR), 
	"CUSTOMER_PASSWORD" VARCHAR2(255 CHAR), 
	"CUSTOMERDATE_OF_BIRTH" VARCHAR2(255 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LOAN
--------------------------------------------------------

  CREATE TABLE "HOMELOAN"."LOAN" 
   (	"LOAN_ID" NUMBER(10,0), 
	"BALANCE" FLOAT(126), 
	"EMI_AMOUNT" NUMBER(10,0), 
	"EMI_END_DATE" DATE, 
	"EMI_NEXT_DATE" DATE, 
	"EMI_START_DATE" DATE, 
	"INTEREST_RATE" FLOAT(126), 
	"LOAN_AMOUNT" FLOAT(126), 
	"TENURE" FLOAT(126), 
	"VERIFICATION_DATE" DATE, 
	"APPLICATION_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into HOMELOAN.ADMIN
SET DEFINE OFF;
Insert into HOMELOAN.ADMIN (ADMIN_ID,ADMIN_EMAIL,ADMIN_FIRST_NAME,ADMIN_LAST_NAME,ADMIN_PASSWORD) values (50,'admin@admin.com','Emaad','Sultan','admin123');
REM INSERTING into HOMELOAN.APPLICATION
SET DEFINE OFF;
Insert into HOMELOAN.APPLICATION (APPLICATION_ID,AADHAR_CARD,AADHAR_NUMBER,ADDRESS,APPOINTMENT_DATE,GENDER,INCOME,LETTER_OF_AGREEMENT,LOAN_AMOUNT,LOAN_STATUS,MAX_LOAN_AMOUNT,NATIONALITY,NO_OBJECTION_CERTI,ORGANISATION,PAN_CARD,PROPERTY_COST,PROPERTY_LOCATION,PROPERTY_TYPE,RETIREMENT_AGE,SALARY_SLIP,SALE_AGREEMENT,TENURE,USERPAN,CUSTOMER_ID) values (20206,'adhar','adhaarNo','Dehradun',to_date('04-09-20','DD-MM-RR'),'male',40000,'letterOfAgreement',32000,'pending',0,'indian',null,null,null,0,null,null,0,null,null,0,null,5);
Insert into HOMELOAN.APPLICATION (APPLICATION_ID,AADHAR_CARD,AADHAR_NUMBER,ADDRESS,APPOINTMENT_DATE,GENDER,INCOME,LETTER_OF_AGREEMENT,LOAN_AMOUNT,LOAN_STATUS,MAX_LOAN_AMOUNT,NATIONALITY,NO_OBJECTION_CERTI,ORGANISATION,PAN_CARD,PROPERTY_COST,PROPERTY_LOCATION,PROPERTY_TYPE,RETIREMENT_AGE,SALARY_SLIP,SALE_AGREEMENT,TENURE,USERPAN,CUSTOMER_ID) values (20207,'adhar','adhaarNo','Dehradun',to_date('04-09-20','DD-MM-RR'),'male',40000,'letterOfAgreement',32000,'pending',0,'indian',null,null,null,0,null,null,0,null,null,0,null,6);
Insert into HOMELOAN.APPLICATION (APPLICATION_ID,AADHAR_CARD,AADHAR_NUMBER,ADDRESS,APPOINTMENT_DATE,GENDER,INCOME,LETTER_OF_AGREEMENT,LOAN_AMOUNT,LOAN_STATUS,MAX_LOAN_AMOUNT,NATIONALITY,NO_OBJECTION_CERTI,ORGANISATION,PAN_CARD,PROPERTY_COST,PROPERTY_LOCATION,PROPERTY_TYPE,RETIREMENT_AGE,SALARY_SLIP,SALE_AGREEMENT,TENURE,USERPAN,CUSTOMER_ID) values (20201,'adhar','adhaarNo','Dehradun',to_date('04-09-20','DD-MM-RR'),'male',40000,'letterOfAgreement',32000,'pending',0,'indian',null,null,null,0,null,null,0,null,null,0,null,4);
Insert into HOMELOAN.APPLICATION (APPLICATION_ID,AADHAR_CARD,AADHAR_NUMBER,ADDRESS,APPOINTMENT_DATE,GENDER,INCOME,LETTER_OF_AGREEMENT,LOAN_AMOUNT,LOAN_STATUS,MAX_LOAN_AMOUNT,NATIONALITY,NO_OBJECTION_CERTI,ORGANISATION,PAN_CARD,PROPERTY_COST,PROPERTY_LOCATION,PROPERTY_TYPE,RETIREMENT_AGE,SALARY_SLIP,SALE_AGREEMENT,TENURE,USERPAN,CUSTOMER_ID) values (20202,'adhar','adhaarNo','Dehradun',to_date('04-09-20','DD-MM-RR'),'male',40000,'letterOfAgreement',32000,'pending',0,'indian',null,null,null,0,null,null,0,null,null,0,null,4);
Insert into HOMELOAN.APPLICATION (APPLICATION_ID,AADHAR_CARD,AADHAR_NUMBER,ADDRESS,APPOINTMENT_DATE,GENDER,INCOME,LETTER_OF_AGREEMENT,LOAN_AMOUNT,LOAN_STATUS,MAX_LOAN_AMOUNT,NATIONALITY,NO_OBJECTION_CERTI,ORGANISATION,PAN_CARD,PROPERTY_COST,PROPERTY_LOCATION,PROPERTY_TYPE,RETIREMENT_AGE,SALARY_SLIP,SALE_AGREEMENT,TENURE,USERPAN,CUSTOMER_ID) values (20203,null,null,null,to_date('04-09-20','DD-MM-RR'),null,0,null,0,'rejected',0,null,null,null,null,0,null,null,0,null,null,0,null,null);
Insert into HOMELOAN.APPLICATION (APPLICATION_ID,AADHAR_CARD,AADHAR_NUMBER,ADDRESS,APPOINTMENT_DATE,GENDER,INCOME,LETTER_OF_AGREEMENT,LOAN_AMOUNT,LOAN_STATUS,MAX_LOAN_AMOUNT,NATIONALITY,NO_OBJECTION_CERTI,ORGANISATION,PAN_CARD,PROPERTY_COST,PROPERTY_LOCATION,PROPERTY_TYPE,RETIREMENT_AGE,SALARY_SLIP,SALE_AGREEMENT,TENURE,USERPAN,CUSTOMER_ID) values (20204,null,null,null,to_date('04-09-20','DD-MM-RR'),null,0,null,0,'rejected',0,null,null,null,null,0,null,null,0,null,null,0,null,null);
Insert into HOMELOAN.APPLICATION (APPLICATION_ID,AADHAR_CARD,AADHAR_NUMBER,ADDRESS,APPOINTMENT_DATE,GENDER,INCOME,LETTER_OF_AGREEMENT,LOAN_AMOUNT,LOAN_STATUS,MAX_LOAN_AMOUNT,NATIONALITY,NO_OBJECTION_CERTI,ORGANISATION,PAN_CARD,PROPERTY_COST,PROPERTY_LOCATION,PROPERTY_TYPE,RETIREMENT_AGE,SALARY_SLIP,SALE_AGREEMENT,TENURE,USERPAN,CUSTOMER_ID) values (20205,null,null,null,to_date('04-09-20','DD-MM-RR'),null,0,null,0,'verified',0,null,null,null,null,0,null,null,0,null,null,0,null,null);
REM INSERTING into HOMELOAN.CUSTOMER
SET DEFINE OFF;
Insert into HOMELOAN.CUSTOMER (CUSTOMER_ID,CUSTOMER_CITY,CUSTOMER_EMAIL,CUSTOMER_EMPLOYMENT_TYPE,CUSTOMER_FIRST_NAME,CUSTOMER_LAST_NAME,CUSTOMER_MOBILE_NUMBER,CUSTOMER_PASSWORD,CUSTOMERDATE_OF_BIRTH) values (3,'Dehradun','emaad@sultan','Salaried','Emaad','Sultan','8745612397','user123',null);
Insert into HOMELOAN.CUSTOMER (CUSTOMER_ID,CUSTOMER_CITY,CUSTOMER_EMAIL,CUSTOMER_EMPLOYMENT_TYPE,CUSTOMER_FIRST_NAME,CUSTOMER_LAST_NAME,CUSTOMER_MOBILE_NUMBER,CUSTOMER_PASSWORD,CUSTOMERDATE_OF_BIRTH) values (5,'Deg','emaad@sultan','Salaried','Emaad','Sultan','5897456','11',null);
Insert into HOMELOAN.CUSTOMER (CUSTOMER_ID,CUSTOMER_CITY,CUSTOMER_EMAIL,CUSTOMER_EMPLOYMENT_TYPE,CUSTOMER_FIRST_NAME,CUSTOMER_LAST_NAME,CUSTOMER_MOBILE_NUMBER,CUSTOMER_PASSWORD,CUSTOMERDATE_OF_BIRTH) values (7,'Dehradun','yash@gmail.com','Salaried','Yash','Singh','8057900177','1111',null);
Insert into HOMELOAN.CUSTOMER (CUSTOMER_ID,CUSTOMER_CITY,CUSTOMER_EMAIL,CUSTOMER_EMPLOYMENT_TYPE,CUSTOMER_FIRST_NAME,CUSTOMER_LAST_NAME,CUSTOMER_MOBILE_NUMBER,CUSTOMER_PASSWORD,CUSTOMERDATE_OF_BIRTH) values (1,'exerx','rexex','exxx','SA','trdr','xerxrx','xerrexe',null);
Insert into HOMELOAN.CUSTOMER (CUSTOMER_ID,CUSTOMER_CITY,CUSTOMER_EMAIL,CUSTOMER_EMPLOYMENT_TYPE,CUSTOMER_FIRST_NAME,CUSTOMER_LAST_NAME,CUSTOMER_MOBILE_NUMBER,CUSTOMER_PASSWORD,CUSTOMERDATE_OF_BIRTH) values (2,'Dehradun','sahilnegi@gmail.com','Salaried','Sahil','Negi','9876543210','user123',null);
Insert into HOMELOAN.CUSTOMER (CUSTOMER_ID,CUSTOMER_CITY,CUSTOMER_EMAIL,CUSTOMER_EMPLOYMENT_TYPE,CUSTOMER_FIRST_NAME,CUSTOMER_LAST_NAME,CUSTOMER_MOBILE_NUMBER,CUSTOMER_PASSWORD,CUSTOMERDATE_OF_BIRTH) values (6,null,'sam@gmail.com',null,'Sam','Singh','80','1111',null);
Insert into HOMELOAN.CUSTOMER (CUSTOMER_ID,CUSTOMER_CITY,CUSTOMER_EMAIL,CUSTOMER_EMPLOYMENT_TYPE,CUSTOMER_FIRST_NAME,CUSTOMER_LAST_NAME,CUSTOMER_MOBILE_NUMBER,CUSTOMER_PASSWORD,CUSTOMERDATE_OF_BIRTH) values (4,'Dehradun','r@r.com','Salaried','Someone','Random','8057900177','1234567890',null);
REM INSERTING into HOMELOAN.LOAN
SET DEFINE OFF;
Insert into HOMELOAN.LOAN (LOAN_ID,BALANCE,EMI_AMOUNT,EMI_END_DATE,EMI_NEXT_DATE,EMI_START_DATE,INTEREST_RATE,LOAN_AMOUNT,TENURE,VERIFICATION_DATE,APPLICATION_ID) values (501,50000,500,null,null,null,null,null,null,null,null);
--------------------------------------------------------
--  Constraints for Table LOAN
--------------------------------------------------------

  ALTER TABLE "HOMELOAN"."LOAN" MODIFY ("LOAN_ID" NOT NULL ENABLE);
 
  ALTER TABLE "HOMELOAN"."LOAN" ADD PRIMARY KEY ("LOAN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "HOMELOAN"."ADMIN" MODIFY ("ADMIN_ID" NOT NULL ENABLE);
 
  ALTER TABLE "HOMELOAN"."ADMIN" ADD PRIMARY KEY ("ADMIN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table APPLICATION
--------------------------------------------------------

  ALTER TABLE "HOMELOAN"."APPLICATION" MODIFY ("APPLICATION_ID" NOT NULL ENABLE);
 
  ALTER TABLE "HOMELOAN"."APPLICATION" ADD PRIMARY KEY ("APPLICATION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "HOMELOAN"."CUSTOMER" MODIFY ("CUSTOMER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "HOMELOAN"."CUSTOMER" ADD PRIMARY KEY ("CUSTOMER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table APPLICATION
--------------------------------------------------------

  ALTER TABLE "HOMELOAN"."APPLICATION" ADD CONSTRAINT "FKDIH65Y3YWNH2G5DDJAE3UD4KW" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "HOMELOAN"."CUSTOMER" ("CUSTOMER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOAN
--------------------------------------------------------

  ALTER TABLE "HOMELOAN"."LOAN" ADD CONSTRAINT "FKM18ESITX1NNAYKSJ9VFJ0127M" FOREIGN KEY ("APPLICATION_ID")
	  REFERENCES "HOMELOAN"."APPLICATION" ("APPLICATION_ID") ENABLE;