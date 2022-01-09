CREATE OR REPLACE PROCEDURE del_address_prc(p_address_id NUMBER) IS
BEGIN
  UPDATE address a
     SET a.dml_flag = 'D'
   WHERE a.address_id = p_address_id;
END;
/
