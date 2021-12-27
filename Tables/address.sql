CREATE TABLE address(
       address_id NUMBER,
       country_code VARCHAR2(3) NOT NULL,
       zip_code NUMBER NOT NULL,
       city VARCHAR2(50) NOT NULL,
       street VARCHAR2(50) NOT NULL,
       house_number NUMBER NOT NULL,
       mod_user VARCHAR2(300),
       created_on TIMESTAMP(6),
       last_mod timestamp(6),
       dml_flag varchar2(1),
       version number
);
