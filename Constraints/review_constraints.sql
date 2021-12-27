ALTER TABLE gallery_review
ADD CONSTRAINT review_pk PRIMARY KEY (review_id);
ALTER TABLE gallery_review
ADD CONSTRAINT review_fk FOREIGN KEY (gallery_id) REFERENCES galleries(gallery_id);
ALTER TABLE gallery_review
ADD CONSTRAINT review_chk CHECK(rating BETWEEN 1 AND 5);
