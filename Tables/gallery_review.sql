CREATE TABLE gallery_review(
       review_id NUMBER,
       gallery_id NUMBER NOT NULL,
       review_text VARCHAR2(300) NOT NULL,
       rating NUMBER(1) NOT NULL
);
