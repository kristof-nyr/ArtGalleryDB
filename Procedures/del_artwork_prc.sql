CREATE OR REPLACE PROCEDURE del_artwork_prc(p_artwork_id NUMBER) IS
BEGIN
  UPDATE artworks aw
     SET aw.dml_flag = 'D'
   WHERE aw.artwork_id = p_artwork_id;
END;
/
