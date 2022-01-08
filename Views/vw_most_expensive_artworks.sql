CREATE OR REPLACE VIEW vw_most_expensive_artworks as 
SELECT * FROM (
  SELECT ar.full_name
        ,ar.style
        ,aw.title
        ,TO_CHAR(aw.price, 'L99,999,999') AS "Ar"
    FROM artists ar
    JOIN artworks aw
      ON ar.artist_id = aw.artist
   ORDER BY aw.price DESC
) WHERE ROWNUM <= 5;
