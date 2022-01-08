CREATE OR REPLACE VIEW vw_5stars AS
SELECT g.gallery_name as "Galeria neve"
      ,gr.review_text as "Velemeny"
      ,rpad('*', gr.rating, '*') as "Ertekeles"
  FROM galleries g
  JOIN gallery_review gr
    ON g.gallery_id = gr.gallery_id
 WHERE gr.rating = 5;
