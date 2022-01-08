CREATE OR REPLACE VIEW vw_galleries_of_budapest AS
SELECT a.city || ', ' || a.street || ' ' ||  a.house_number as "Cim"
      ,g.gallery_name as "Galeria"
      ,avg(gr.rating) over(partition by gr.gallery_id) as "Atlagos ertekeles"
  FROM address a
  JOIN galleries g
    ON a.address_id = g.address_id
    join gallery_review gr
    on g.gallery_id = gr.gallery_id
 WHERE a.city LIKE '%Budapest%';
