CREATE OR REPLACE PROCEDURE del_gallery_prc(p_gallery_id NUMBER) IS
BEGIN
  UPDATE galleries g
     SET g.dml_flag = 'D'
   WHERE g.gallery_id = p_gallery_id;
END;
/
