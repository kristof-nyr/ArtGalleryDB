ALTER TABLE galleries
ADD CONSTRAINT gallery_pk PRIMARY KEY (gallery_id);
ALTER TABLE galleries
ADD CONSTRAINT gallery_fk1 FOREIGN KEY (address_id) REFERENCES address(address_id);
