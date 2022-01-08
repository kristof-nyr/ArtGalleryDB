CREATE TABLE artworks_h(
       artwork_id NUMBER,
       artist NUMBER,
       made_in DATE,
       title VARCHAR2(50),
       style VARCHAR2(50),
       price NUMBER,
       mod_user VARCHAR2(300),
       created_on TIMESTAMP(6),
       last_mod timestamp(6),
       dml_flag varchar2(1),
       version number
);
