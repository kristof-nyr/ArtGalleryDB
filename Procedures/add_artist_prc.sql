CREATE OR REPLACE PROCEDURE add_artist_prc(p_full_name     VARCHAR2
                                          ,p_birth_country VARCHAR2
                                          ,p_age           NUMBER
                                          ,p_style         VARCHAR2) IS
BEGIN
  INSERT INTO artists
    (full_name
    ,birth_country
    ,age
    ,style)
  VALUES
    (p_full_name
    ,p_birth_country
    ,p_age
    ,p_style);

END;
