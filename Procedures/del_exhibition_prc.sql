CREATE OR REPLACE PROCEDURE del_exhibition_prc(p_exh_id NUMBER) IS
BEGIN
  UPDATE exhibitions ex
     SET ex.dml_flag = 'D'
   WHERE ex.exhibition_id = p_exh_id;
END;
/
