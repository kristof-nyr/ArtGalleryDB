declare
  cursor cur is
    select 'alter system kill session ''' || sid || ',' || serial# || '''' as command
      from v$session
     where username = 'gallery_manager';
begin
  for c in cur loop
    EXECUTE IMMEDIATE c.command;
  end loop;
end;
/

DECLARE
  v_count NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_count FROM dba_users t WHERE t.username='gallery_manager';
  IF v_count = 1 THEN 
    EXECUTE IMMEDIATE 'DROP USER gallery_manager CASCADE';
  END IF;
END;
/
CREATE USER Gallery_Manager 
  IDENTIFIED BY "12345678" 
  DEFAULT TABLESPACE users
  QUOTA UNLIMITED ON users
;

GRANT CREATE SESSION TO gallery_manager;
GRANT CREATE TABLE TO gallery_manager;
GRANT CREATE VIEW TO gallery_manager;
GRANT CREATE SEQUENCE TO gallery_manager;
GRANT CREATE PROCEDURE TO gallery_manager;
GRANT CREATE TYPE TO gallery_manager;
GRANT CREATE TRIGGER TO gallery_manager;

ALTER SESSION SET CURRENT_SCHEMA=gallery_manager;
