CREATE OR REPLACE TYPE ty_gallery IS OBJECT(
       gallery_name varchar2(50),
       city varchar2(50),
       street varchar2(50),
       house_number number
);
/
CREATE OR REPLACE TYPE ty_gallery_list IS TABLE OF ty_gallery;
/
