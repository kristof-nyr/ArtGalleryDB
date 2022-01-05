CREATE OR REPLACE PROCEDURE mod_gallery_prc(p_gallery_id   NUMBER
                                           ,p_gallery_name VARCHAR2
                                           ,p_address_id   NUMBER) IS
BEGIN
  UPDATE galleries g
     SET g.gallery_name = p_gallery_name
        ,g.address_id   = p_address_id
   WHERE g.gallery_id = p_gallery_id;
END;
