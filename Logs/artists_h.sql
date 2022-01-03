CREATE TABLE artists_h(
       artist_id NUMBER,
       full_name VARCHAR2(70),
       birth_country VARCHAR2(50),
       age NUMBER(2),
       style VARCHAR2(50),
       mod_user VARCHAR2(300),
       created_on TIMESTAMP(6),
       last_mod timestamp(6),
       dml_flag varchar2(1),
       version number
);
