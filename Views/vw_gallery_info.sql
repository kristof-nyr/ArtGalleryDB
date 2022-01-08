CREATE OR REPLACE VIEW vw_gallery_info AS
SELECT a.country_code    AS "Orszag"
       ,a.zip_code        AS "Iranyitoszam"
       ,a.city            AS "Varos"
       ,a.street          AS "Utca"
       ,a.house_number    AS "Hazszam"
       ,g.gallery_name    AS "Galeria"
       ,e.exhibition_name AS "Kiallitas"
  FROM galleries g
  JOIN address a
    ON g.address_id = a.address_id
  JOIN exhibitions e
    ON e.gallery_id = g.gallery_id;
