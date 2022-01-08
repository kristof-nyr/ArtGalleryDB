CREATE OR REPLACE TYPE ty_artwork IS OBJECT(
       artwork_id number,
       artist_name varchar2(70),
       title varchar2(50),
       style varchar2(50),
       price number
);
/
CREATE OR REPLACE TYPE ty_artwork_list IS TABLE OF ty_artwork;
/
