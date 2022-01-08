CREATE TABLE artworks(
       artwork_id NUMBER,
       artist NUMBER NOT NULL,
       made_in DATE NOT NULL,
       title VARCHAR2(50) NOT NULL,
       style VARCHAR2(50) NOT NULL,
       price NUMBER NOT NULL,
       mod_user VARCHAR2(300),
       created_on TIMESTAMP(6),
       last_mod timestamp(6),
       dml_flag varchar2(1),
       version number
);
