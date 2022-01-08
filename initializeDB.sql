PROMPT =======================================================================
PROMPT Creating user...

@./Users/create_user.sql

PROMPT =======================================================================
PROMPT Creating tables...

@./Tables/address.sql
@./Tables/artists.sql
@./Tables/gallery_review.sql
@./Tables/artworks.sql
@./Tables/exhibitions.sql
@./Tables/galleries.sql
@./Tables/featured_artworks.sql

PROMPT =======================================================================
PROMPT Creating logs...

@./Logs/address_h.sql
@./Logs/artists_h.sql
@./Logs/artworks_h.sql
@./Logs/exhibitions_h.sql
@./Logs/galleries_h.sql
@./Logs/gallery_review_h.sql
@./Logs/error_log.sql


PROMPT =======================================================================
PROMPT Creating constraints...

@./Constraints/address_constraints.sql
@./Constraints/artist_constraints.sql
@./Constraints/galleries_constraints.sql
@./Constraints/review_constraints.sql
@./Constraints/artwork_constraints.sql
@./Constraints/exhibition_constraints.sql
@./Constraints/featured_artworks_constraints.sql


PROMPT =======================================================================
PROMPT Creating sequences...

@./Sequences/address_seq.sql
@./Sequences/artist_seq.sql
@./Sequences/artwork_seq.sql
@./Sequences/error_log_seq.sql
@./Sequences/exhibition_seq.sql
@./Sequences/gallery_seq.sql
@./Sequences/review_seq.sql


PROMPT =======================================================================
PROMPT Creating triggers...

@./Triggers/address_log_trg.sql
@./Triggers/artists_log_trg.sql
@./Triggers/artworks_log_trg.sql
@./Triggers/exhibitions_log_trg.sql
@./Triggers/galleries_log_trg.sql
@./Triggers/gallery_review_log_trg.sql

@./Triggers/address_mod_trg.sql
@./Triggers/artist_mod_trg.sql
@./Triggers/artwork_mod_trg.sql
@./Triggers/exhibitions_mod_trg.sql
@./Triggers/galleries_mod_trg.sql
@./Triggers/gallery_review_mod_trg.sql

PROMPT =======================================================================
PROMPT Creating procedures...

@./Procedures/add_address_prc.sql
@./Procedures/add_artist_prc.sql
@./Procedures/add_artwork_prc.sql
@./Procedures/add_exhibition_prc.sql
@./Procedures/add_gallery_prc.sql
@./Procedures/add_review_prc.sql

@./Procedures/mod_address_prc.sql
@./Procedures/mod_artist_prc.sql
@./Procedures/mod_artwork_prc.sql
@./Procedures/mod_exhibition_prc.sql
@./Procedures/mod_gallery_prc.sql

PROMPT =======================================================================
PROMPT Creating package...

@./Packages/pkg_error_log.sql

PROMPT =======================================================================
PROMPT Creating Types...

@./Types/ty_artwork.sql
@./Types/ty_gallery.sql

PROMPT =======================================================================
PROMPT Creating data...

@./Data/initialize_data.sql

PROMPT =======================================================================
PROMPT Creating views...

@./Views/vw_5stars.sql
@./Views/vw_galleries_of_budapest.sql
@./Views/vw_gallery_info.sql
@./Views/vw_most_expensive_artworks.sql
@./Views/vw_upcoming_exh.sql

PROMPT =======================================================================
PROMPT Creating functions...

@./Functions/fn_artworks_by_artist.sql
@./Functions/fn_galleries_by_city.sql


PROMPT =======================================================================
PROMPT Done.
