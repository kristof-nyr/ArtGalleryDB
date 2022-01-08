CREATE TABLE gallery_review_h(
       review_id NUMBER,
       gallery_id NUMBER,
       review_text VARCHAR2(300),
       rating NUMBER(1),
       mod_user VARCHAR2(300),
       created_on TIMESTAMP(6),
       last_mod timestamp(6),
       dml_flag varchar2(1),
       version number
);
