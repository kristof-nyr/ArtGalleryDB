CREATE OR REPLACE TRIGGER galleries_log_trg
  AFTER INSERT OR UPDATE OR DELETE ON galleries
  FOR EACH ROW
DECLARE
  v_mod_user address_h.mod_user%TYPE;
  v_mod_time address_h.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;
  IF deleting
  THEN
    INSERT INTO galleries_h
      (gallery_id
      ,gallery_name
      ,address_id
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.gallery_id
      ,:old.gallery_name
      ,:old.address_id
      ,v_mod_user
      ,:old.created_on
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  ELSE
    INSERT INTO galleries_h
      (gallery_id
      ,gallery_name
      ,address_id
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.gallery_id
      ,:new.gallery_name
      ,:new.address_id
      ,v_mod_user
      ,:new.created_on
      ,v_mod_time
      ,:new.dml_flag
      ,:new.version);
  END IF;
END;
/
