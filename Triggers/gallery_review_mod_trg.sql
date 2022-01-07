CREATE OR REPLACE TRIGGER review_mod_trg
  BEFORE INSERT OR UPDATE ON gallery_review
  FOR EACH ROW
BEGIN
  IF inserting
  THEN
    IF :new.review_id IS NULL
    THEN
      :new.review_id := review_seq.nextval;
    END IF;
    :new.created_on := SYSDATE;
    :new.dml_flag   := 'I';
    :new.version    := 1;
  
  ELSE
    IF nvl(:new.dml_flag, 'U') <> 'D'
    THEN
      :new.dml_flag := 'U';
    END IF;
    :new.version  := :old.version + 1;
    :new.last_mod := SYSDATE;
    :new.mod_user := sys_context('USERENV', 'OS_USER');
  END IF;
END;
