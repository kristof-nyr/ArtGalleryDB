CREATE OR REPLACE PROCEDURE mod_exhibition_prc(p_exhibition_id   NUMBER
                                              ,p_gallery_id      NUMBER
                                              ,p_exhibition_name VARCHAR2
                                              ,p_start_date      DATE
                                              ,p_end_date        DATE
                                              ,p_entry_price     NUMBER) IS
BEGIN
  UPDATE exhibitions e
     SET e.gallery_id      = p_gallery_id
        ,e.exhibition_name = p_exhibition_name
        ,e.start_date      = p_start_date
        ,e.end_date        = p_end_date
        ,e.entry_price     = p_entry_price
   WHERE e.exhibition_id = p_exhibition_id;
END;
