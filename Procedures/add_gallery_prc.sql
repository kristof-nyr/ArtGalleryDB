CREATE OR REPLACE PROCEDURE add_gallery_prc(p_gallery_name VARCHAR2
                                           ,p_address_id   NUMBER) IS
BEGIN
  INSERT INTO galleries
    (gallery_name
    ,address_id)
  VALUES
    (p_gallery_name
    ,p_address_id);
END;
/
