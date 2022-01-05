PROMPT ===============================================================================
PROMPT UNIT TEST: add_artwork_prc

declare
  v_artist number := artist_seq.currval;
  v_made_in date := to_date('1512-06-12', 'yyyy-mm-dd');
  v_title varchar2(50) := 'Creation of Adam';
  v_style varchar2(50) := 'Late Renaissance';
  v_price number := 20000000;

begin
  add_artwork_prc(p_artist => v_artist,
                  p_made_in => v_made_in,
                  p_title => v_title,
                  p_style => v_style,
                  p_price => v_price);
end;

/

select * from artworks;

/

PROMPT ===============================================================================
PROMPT UNIT TEST: mod_artwork_prc
declare
  v_artist number := artist_seq.currval;
  v_made_in date := to_date('1512-06-12', 'yyyy-mm-dd');
  v_title varchar2(50) := 'Creation of Adam';
  v_style varchar2(50) := 'Mannerism';
  v_price number := 25000000;

begin
  mod_artwork_prc(p_artwork_id => artwork_seq.currval,
                  p_artist => v_artist,
                  p_made_in => v_made_in,
                  p_title => v_title,
                  p_style => v_style,
                  p_price => v_price);
end;

/
                   
select * from artworks;

/

rollback;
