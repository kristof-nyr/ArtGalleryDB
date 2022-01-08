CREATE OR REPLACE PROCEDURE mod_artwork_prc(p_artwork_id NUMBER
                                           ,p_artist     NUMBER
                                           ,p_made_in    DATE
                                           ,p_title      VARCHAR2
                                           ,p_style      VARCHAR2
                                           ,p_price      NUMBER) IS
BEGIN
  UPDATE artworks aw
     SET aw.artist  = p_artist
        ,aw.made_in = p_made_in
        ,aw.title   = p_title
        ,aw.style   = p_style
        ,aw.price   = p_price
   WHERE aw.artwork_id = p_artwork_id;
END;
/
