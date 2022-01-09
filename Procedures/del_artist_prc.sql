CREATE OR REPLACE PROCEDURE del_artist_prc(p_artist_id NUMBER) IS
BEGIN
  UPDATE artists ar
     SET ar.dml_flag = 'D'
   WHERE ar.artist_id = p_artist_id;
END;
/
