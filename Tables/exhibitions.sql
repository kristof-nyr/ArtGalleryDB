CREATE TABLE exhibitions(
       exhibition_id NUMBER,
       gallery_id NUMBER NOT NULL,
       exhibition_name VARCHAR2(100) NOT NULL,
       start_date DATE NOT NULL,
       end_date DATE NOT NULL,
       entry_price NUMBER,
       mod_user VARCHAR2(300),
       created_on TIMESTAMP(6),
       last_mod timestamp(6),
       dml_flag varchar2(1),
       version number
);
