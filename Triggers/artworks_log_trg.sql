CREATE OR REPLACE TRIGGER artworks_log_trg
  AFTER INSERT OR UPDATE OR DELETE ON artworks
  FOR EACH ROW
DECLARE
  v_mod_user address_h.mod_user%TYPE;
  v_mod_time address_h.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;
  IF deleting
  THEN
    INSERT INTO artworks_h
      (artwork_id
      ,artist
      ,made_in
      ,title
      ,style
      ,price
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.artwork_id
      ,:old.artist
      ,:old.made_in
      ,:old.title
      ,:old.style
      ,:old.price
      ,v_mod_user
      ,:old.created_on
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  ELSE
    INSERT INTO artworks_h
      (artwork_id
      ,artist
      ,made_in
      ,title
      ,style
      ,price
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.artwork_id
      ,:new.artist
      ,:new.made_in
      ,:new.title
      ,:new.style
      ,:new.price
      ,v_mod_user
      ,:new.created_on
      ,v_mod_time
      ,:new.dml_flag
      ,:new.version);
  END IF;
END;
/
