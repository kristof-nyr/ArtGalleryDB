CREATE OR REPLACE PROCEDURE add_review_prc(p_gallery_id  NUMBER
                                          ,p_review_text VARCHAR2
                                          ,p_rating      NUMBER) IS
BEGIN
  INSERT INTO gallery_review
    (gallery_id
    ,review_text
    ,rating)
  VALUES
    (p_gallery_id
    ,p_review_text
    ,p_rating);
END;
