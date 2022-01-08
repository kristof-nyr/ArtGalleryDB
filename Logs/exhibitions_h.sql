CREATE TABLE exhibitions_h(
       exhibition_id NUMBER,
       gallery_id NUMBER,
       exhibition_name VARCHAR2(100),
       start_date DATE,
       end_date DATE,
       entry_price NUMBER,
       mod_user VARCHAR2(300),
       created_on TIMESTAMP(6),
       last_mod timestamp(6),
       dml_flag varchar2(1),
       version number
);
