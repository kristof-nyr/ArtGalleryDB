CREATE OR REPLACE PACKAGE del_galleries IS

  PROCEDURE delete_gallery;

END del_galleries;

/

CREATE OR REPLACE PACKAGE BODY del_galleries IS

  PROCEDURE delete_gallery IS
    CURSOR gallery_cur IS
      SELECT * FROM galleries g WHERE g.dml_flag LIKE 'D';
  BEGIN
    FOR i IN gallery_cur
    LOOP
      DELETE FROM galleries g WHERE g.gallery_id = i.gallery_id;
    END LOOP;
    COMMIT;
  END;

END del_galleries;

/
