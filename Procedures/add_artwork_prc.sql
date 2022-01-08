CREATE OR REPLACE PROCEDURE add_artwork_prc(p_artist  NUMBER
                                           ,p_made_in DATE
                                           ,p_title   VARCHAR2
                                           ,p_style   VARCHAR2
                                           ,p_price   NUMBER) IS
BEGIN
  INSERT INTO artworks
    (artist
    ,made_in
    ,title
    ,style
    ,price)
  VALUES
    (p_artist
    ,p_made_in
    ,p_title
    ,p_style
    ,p_price);

END;
/
