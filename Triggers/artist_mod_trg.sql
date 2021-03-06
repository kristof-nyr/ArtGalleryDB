CREATE OR REPLACE TRIGGER artist_mod_trg
  BEFORE INSERT OR UPDATE ON artists
  FOR EACH ROW
BEGIN
  IF inserting
  THEN
    IF :new.artist_id IS NULL
    THEN
      :new.artist_id := artist_seq.nextval;
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
/
