CREATE OR REPLACE TRIGGER artists_log_trg
  AFTER INSERT OR UPDATE OR DELETE ON artists
  FOR EACH ROW
DECLARE
  v_mod_user address_h.mod_user%TYPE;
  v_mod_time address_h.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;
  IF deleting
  THEN
    INSERT INTO artists_h
      (artist_id
      ,full_name
      ,birth_country
      ,age
      ,style
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.artist_id
      ,:old.full_name
      ,:old.birth_country
      ,:old.age
      ,:old.style
      ,v_mod_user
      ,:old.created_on
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  ELSE
    INSERT INTO artists_h
      (artist_id
      ,full_name
      ,birth_country
      ,age
      ,style
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.artist_id
      ,:new.full_name
      ,:new.birth_country
      ,:new.age
      ,:new.style
      ,v_mod_user
      ,:new.created_on
      ,v_mod_time
      ,:new.dml_flag
      ,:new.version);
  END IF;
END;
