ALTER TABLE exhibitions
ADD CONSTRAINT exhibiton_pk PRIMARY KEY (exhibition_id);
ALTER TABLE exhibitions
ADD CONSTRAINT exhibition_fk FOREIGN KEY (gallery_id) REFERENCES galleries(gallery_id);
