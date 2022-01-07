CREATE OR REPLACE PROCEDURE add_address_prc(p_country_code VARCHAR2
                                           ,p_zip_code     NUMBER
                                           ,p_city         VARCHAR2
                                           ,p_street       VARCHAR2
                                           ,p_house_number NUMBER) IS
BEGIN
  INSERT INTO address
    (country_code
    ,zip_code
    ,city
    ,street
    ,house_number)
  VALUES
    (p_country_code
    ,p_zip_code
    ,p_city
    ,p_street
    ,p_house_number);
END;
