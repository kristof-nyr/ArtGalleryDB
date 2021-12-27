ALTER TABLE artworks
ADD CONSTRAINT artwork_pk PRIMARY KEY (artwork_id);
ALTER TABLE artworks
ADD CONSTRAINT artwork_fk FOREIGN KEY (artist) REFERENCES artists(artist_id);
