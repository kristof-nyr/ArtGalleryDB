CREATE TABLE address_h(
       address_id NUMBER,
       country_code VARCHAR2(3),
       zip_code NUMBER,
       city VARCHAR2(50),
       street VARCHAR2(50),
       house_number NUMBER,
       mod_user VARCHAR2(300),
       created_on TIMESTAMP(6),
       last_mod timestamp(6),
       dml_flag varchar2(1),
       version number
);
