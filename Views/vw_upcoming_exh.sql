CREATE OR REPLACE VIEW vw_upcoming_exh AS
SELECT e.exhibition_name as "Kiallitas neve"
      ,aw.title as "Mualkotas"
      ,e.start_date as "Kezdes"
      ,e.end_date as "Vege"
      ,e.entry_price || ' Ft' as "Dij"
  FROM exhibitions e
  JOIN featured_artworks fa
    ON e.exhibition_id = fa.exhibition_id
  JOIN artworks aw
    ON fa.artwork_id = aw.artwork_id
    where e.start_date > SYSDATE;
