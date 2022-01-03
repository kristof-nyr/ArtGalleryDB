CREATE OR REPLACE TRIGGER exhibitions_log_trg
  AFTER INSERT OR UPDATE OR DELETE ON exhibitions
  FOR EACH ROW
DECLARE
  v_mod_user address_h.mod_user%TYPE;
  v_mod_time address_h.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;
  IF deleting
  THEN
    INSERT INTO exhibitions_h
      (exhibition_id
      ,gallery_id
      ,exhibition_name
      ,start_date
      ,end_date
      ,entry_price
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.exhibition_id
      ,:old.gallery_id
      ,:old.exhibition_name
      ,:old.start_date
      ,:old.end_date
      ,:old.entry_price
      ,v_mod_user
      ,:old.created_on
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  ELSE
    INSERT INTO exhibitions_h
      (exhibition_id
      ,gallery_id
      ,exhibition_name
      ,start_date
      ,end_date
      ,entry_price
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.exhibition_id
      ,:new.gallery_id
      ,:new.exhibition_name
      ,:new.start_date
      ,:new.end_date
      ,:new.entry_price
      ,v_mod_user
      ,:new.created_on
      ,v_mod_time
      ,:new.dml_flag
      ,:new.version);
  END IF;
END;
