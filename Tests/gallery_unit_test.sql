PROMPT ===============================================================================
PROMPT UNIT TEST: add_gallery_prc

declare
  v_gallery_name varchar2(100) := 'Magyar Nemzeti Galéria';
  v_address_id number := address_seq.currval;

begin
  add_gallery_prc(p_gallery_name => v_gallery_name,
                  p_address_id => v_address_id);
end;

/

select * from galleries;

/

PROMPT ===============================================================================
PROMPT UNIT TEST: mod_address_prc
declare
  v_gallery_id number := gallery_seq.currval;
  v_gallery_name varchar2(100) := 'Budapest Galéria';
  v_address_id number := address_seq.currval;
begin
   mod_gallery_prc(p_gallery_id => v_gallery_id,
                  p_gallery_name => v_gallery_name,
                  p_address_id => v_address_id);
end;

/
                   
select * from galleries;

/

rollback;
