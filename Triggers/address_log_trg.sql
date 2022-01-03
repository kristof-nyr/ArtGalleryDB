CREATE OR REPLACE TRIGGER address_log_trg
  AFTER INSERT OR UPDATE OR DELETE ON address
  FOR EACH ROW
DECLARE
  v_mod_user address_h.mod_user%TYPE;
  v_mod_time address_h.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;

  IF deleting
  THEN
    INSERT INTO address_h
      (address_id
      ,country_code
      ,zip_code
      ,city
      ,street
      ,house_number
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.address_id
      ,:old.country_code
      ,:old.zip_code
      ,:old.city
      ,:old.street
      ,:old.house_number
      ,v_mod_user
      ,:old.created_on
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  ELSE
    INSERT INTO address_h
      (address_id
      ,country_code
      ,zip_code
      ,city
      ,street
      ,house_number
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.address_id
      ,:new.country_code
      ,:new.zip_code
      ,:new.city
      ,:new.street
      ,:new.house_number
      ,v_mod_user
      ,:new.created_on
      ,v_mod_time
      ,:new.dml_flag
      ,:new.version);
  END IF;
END;
