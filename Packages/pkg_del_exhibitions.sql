CREATE OR REPLACE PACKAGE del_exhibitions IS

  PROCEDURE delete_exhibition;

END del_exhibitions;

/

CREATE OR REPLACE PACKAGE BODY del_exhibitions IS

  PROCEDURE delete_exhibition IS
    CURSOR exhibition_cur IS
      SELECT * FROM exhibitions e WHERE e.dml_flag LIKE 'D';
  BEGIN
    FOR i IN exhibition_cur
    LOOP
      DELETE FROM exhibitions e WHERE e.exhibition_id = i.exhibition_id;
    END LOOP;
    COMMIT;
  END;

END del_exhibitions;

/
