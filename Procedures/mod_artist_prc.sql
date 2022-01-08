CREATE OR REPLACE PROCEDURE mod_artist_prc(p_artist_id     NUMBER
                                          ,p_full_name     VARCHAR2
                                          ,p_birth_country VARCHAR2
                                          ,p_age           NUMBER
                                          ,p_style         VARCHAR2) IS
BEGIN
  UPDATE artists ar
     SET ar.full_name     = p_full_name
        ,ar.birth_country = p_birth_country
        ,ar.age           = p_age
        ,ar.style         = p_style
   WHERE ar.artist_id = p_artist_id;
END;
/
