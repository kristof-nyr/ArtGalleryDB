CREATE TABLE gallery_review(
       review_id NUMBER,
       gallery_id NUMBER NOT NULL,
       review_text VARCHAR2(300) NOT NULL,
       rating NUMBER(1) NOT NULL,
       mod_user VARCHAR2(300),
       created_on TIMESTAMP(6),
       last_mod timestamp(6),
       dml_flag varchar2(1),
       version number
);
