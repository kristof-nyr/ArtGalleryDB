CREATE TABLE exhibitions(
       exhibition_id NUMBER,
       gallery_id NUMBER NOT NULL,
       exhibition_name VARCHAR2(100) NOT NULL,
       start_date DATE NOT NULL,
       end_date DATE NOT NULL,
       entry_price NUMBER   
)
