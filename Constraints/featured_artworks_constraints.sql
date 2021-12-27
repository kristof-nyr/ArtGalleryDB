ALTER TABLE featured_artworks
ADD CONSTRAINT featured_fk1 FOREIGN KEY (exhibition_id) REFERENCES exhibitions(exhibition_id);
ALTER TABLE featured_artworks
ADD CONSTRAINT featured_fk2 FOREIGN KEY (artwork_id) REFERENCES artworks(artwork_id);
