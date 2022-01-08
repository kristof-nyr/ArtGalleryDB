CREATE OR REPLACE PACKAGE pkg_error_log IS

  PROCEDURE error_log(p_error_message VARCHAR2
                     ,p_error_value   VARCHAR2
                     ,p_error_cause   VARCHAR2);
END pkg_error_log;

/

CREATE OR REPLACE PACKAGE BODY pkg_error_log IS
PROCEDURE error_log(
          p_error_message VARCHAR2
          ,p_error_value VARCHAR2
          ,p_error_cause VARCHAR2) IS
PRAGMA autonomous TRANSACTION;
BEGIN
INSERT INTO error_log(
       error_id
       ,error_message
       ,error_value
       ,error_cause) 
       VALUES(
       error_log_seq.nextval
       ,p_error_message
       ,p_error_value
       ,p_error_cause);
       commit;
END error_log;
END pkg_error_log;
