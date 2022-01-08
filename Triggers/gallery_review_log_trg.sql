CREATE OR REPLACE TRIGGER gallery_review_log_trg
  AFTER INSERT OR UPDATE OR DELETE ON gallery_review
  FOR EACH ROW
DECLARE
  v_mod_user address_h.mod_user%TYPE;
  v_mod_time address_h.last_mod%TYPE;
BEGIN
  v_mod_user := sys_context('USERENV', 'OS_USER');
  v_mod_time := SYSDATE;
  IF deleting
  THEN
    INSERT INTO gallery_review_h
      (review_id
      ,gallery_id
      ,review_text
      ,rating
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:old.review_id
      ,:old.gallery_id
      ,:old.review_text
      ,:old.rating
      ,v_mod_user
      ,:old.created_on
      ,v_mod_time
      ,'D'
      ,:old.version + 1);
  ELSE
    INSERT INTO gallery_review_h
      (review_id
      ,gallery_id
      ,review_text
      ,rating
      ,mod_user
      ,created_on
      ,last_mod
      ,dml_flag
      ,version)
    VALUES
      (:new.review_id
      ,:new.gallery_id
      ,:new.review_text
      ,:new.rating
      ,v_mod_user
      ,:new.created_on
      ,v_mod_time
      ,:new.dml_flag
      ,:new.version);
  END IF;
END;
/
