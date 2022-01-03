DECLARE
  CURSOR cur IS
    SELECT 'alter system kill session ''' || sid || ',' || serial# || '''' AS command
      FROM v$session
     WHERE lower(username) = 'gallery_manager';
BEGIN
  FOR c IN cur
  LOOP
    EXECUTE IMMEDIATE c.command;
  END LOOP;
END;
/

DECLARE v_count NUMBER;
BEGIN
  SELECT COUNT(*)
    INTO v_count
    FROM dba_users t
   WHERE lower(t.username) = 'gallery_manager';
  IF v_count = 1
  THEN
    EXECUTE IMMEDIATE 'DROP USER gallery_manager CASCADE';
  END IF;
END;
/ 

CREATE USER gallery_manager identified BY "12345678" DEFAULT tablespace users quota unlimited ON users;

grant CREATE session TO gallery_manager;
grant CREATE TABLE TO gallery_manager;
grant CREATE view TO gallery_manager;
grant CREATE sequence TO gallery_manager;
grant CREATE PROCEDURE TO gallery_manager;
grant CREATE TYPE TO gallery_manager;
grant CREATE TRIGGER TO gallery_manager;

ALTER session SET current_schema = gallery_manager;
