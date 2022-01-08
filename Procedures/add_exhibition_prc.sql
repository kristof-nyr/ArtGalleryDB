CREATE OR REPLACE PROCEDURE add_exhibition_prc(p_gallery_id      NUMBER
                                              ,p_exhibition_name VARCHAR2
                                              ,p_start_date      DATE
                                              ,p_end_date        DATE
                                              ,p_entry_price     NUMBER) IS
BEGIN
  INSERT INTO exhibitions
    (gallery_id
    ,exhibition_name
    ,start_date
    ,end_date
    ,entry_price)
  VALUES
    (p_gallery_id
    ,p_exhibition_name
    ,p_start_date
    ,p_end_date
    ,p_entry_price);
END;
/
