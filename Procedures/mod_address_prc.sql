CREATE OR REPLACE PROCEDURE mod_address_prc(p_address_id   NUMBER
                                           ,p_country_code VARCHAR2
                                           ,p_zip_code     NUMBER
                                           ,p_city         VARCHAR2
                                           ,p_street       VARCHAR2
                                           ,p_house_number NUMBER) IS
BEGIN
  UPDATE address a
     SET a.country_code = p_country_code
        ,a.zip_code     = p_zip_code
        ,a.city         = p_city
        ,a.street       = p_street
        ,a.house_number = p_house_number
   WHERE a.address_id = p_address_id;
END;
/
