CREATE OR REPLACE PACKAGE del_artworks IS

  PROCEDURE delete_artwork;

END del_artworks;

/

CREATE OR REPLACE PACKAGE BODY del_artworks IS

  PROCEDURE delete_artwork IS
    CURSOR artwork_cur IS
      SELECT * FROM artworks ar WHERE ar.dml_flag LIKE 'D';
  BEGIN
    FOR i IN artwork_cur
    LOOP
      DELETE FROM artworks ar WHERE ar.artwork_id = i.artwork_id;
    END LOOP;
    COMMIT;
  END;

END del_artworks;

/
