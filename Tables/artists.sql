CREATE TABLE artists(
       artist_id NUMBER,
       full_name VARCHAR2(70) NOT NULL,
       birth_country VARCHAR2(50) NOT NULL,
       age NUMBER(2) NOT NULL,
       style VARCHAR2(50) NOT NULL,
       mod_user VARCHAR2(300),
       created_on TIMESTAMP(6),
       last_mod timestamp(6),
       dml_flag varchar2(1),
       version number
);
