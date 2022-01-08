CREATE OR REPLACE FUNCTION fn_galleries_by_city(p_city VARCHAR2)
  RETURN ty_gallery_list IS
  v_galleries ty_gallery_list;
BEGIN
  SELECT ty_gallery(gallery_name => g.gallery_name,
                    city         => a.city,
                    street       => a.street,
                    house_number => a.house_number)
    BULK COLLECT
    INTO v_galleries
    FROM galleries g
    JOIN address a
      ON g.address_id = a.address_id
   WHERE a.city LIKE '%' || p_city || '%';

  --FOR i IN 1 .. v_galleries.count                                             _____________
  --LOOP                                                                       |  TESTING    |
   -- dbms_output.put_line(v_galleries(i)                                      |  PURPOSES   |
   --                      .gallery_name || ' ' || v_galleries(i).city);        _____________
  --END LOOP;

  RETURN v_galleries;

EXCEPTION
  WHEN OTHERS THEN
    pkg_error_log.error_log(p_error_message => dbms_utility.format_error_backtrace,
                            p_error_value   => 'p_city: ' || p_city,
                            p_error_cause   => 'function: fn_galleries_by_city');
END;
