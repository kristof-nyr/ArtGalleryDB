CREATE OR REPLACE FUNCTION fn_artworks_by_artist(p_artist_id NUMBER)
  RETURN ty_artwork_list IS
  v_artworks ty_artwork_list;
BEGIN
  SELECT ty_artwork(artwork_id  => aw.artwork_id,
                    artist_name => ar.full_name,
                    title       => aw.title,
                    style       => aw.style,
                    price       => aw.price)
    BULK COLLECT
    INTO v_artworks
    FROM artists ar
    JOIN artworks aw
      ON ar.artist_id = aw.artist
   WHERE ar.artist_id = p_artist_id;

  --FOR i IN 1 .. v_artworks.count                            ____________
  --LOOP                                                     |  TESTING   | 
  -- dbms_output.put_line(v_artworks(i).title);              |  PURPOSES  |
  --END LOOP;                                                 ____________

  RETURN v_artworks;

EXCEPTION
  WHEN OTHERS THEN
    pkg_error_log.error_log(p_error_message => dbms_utility.format_error_backtrace,
                            p_error_value   => 'p_artist_id: ' ||
                                               p_artist_id,
                            p_error_cause   => 'function: fn_artworks_by_artist');
END;
