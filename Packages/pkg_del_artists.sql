CREATE OR REPLACE PACKAGE del_artists IS

  PROCEDURE delete_artists;

END del_artists;

/

CREATE OR REPLACE PACKAGE BODY del_artists IS

  PROCEDURE delete_artists IS
    CURSOR artist_cur IS
      SELECT * FROM artists ar WHERE ar.dml_flag LIKE 'D';
  BEGIN
    FOR i IN artist_cur
    LOOP
      DELETE FROM artists ar WHERE ar.artist_id = i.artist_id;
    END LOOP;
    COMMIT;
  END;

END del_artists;

/
