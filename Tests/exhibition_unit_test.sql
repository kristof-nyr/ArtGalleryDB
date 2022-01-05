PROMPT ===============================================================================
PROMPT UNIT TEST: add_exhibition_prc

declare
 v_gallery_id number := gallery_seq.currval;
 v_exhibition_name varchar2(100) := 'The Road Less Traveled';
 v_start_date date := to_date('2017-12-16', 'yyyy-mm-dd');
 v_end_date date := to_date('2017-12-24', 'yyyy-mm-dd');
 v_entry_price number := 50;

begin
  add_exhibition_prc(p_gallery_id => v_gallery_id,
                     p_exhibition_name => v_exhibition_name,
                     p_start_date => v_start_date,
                     p_end_date => v_end_date,
                     p_entry_price => v_entry_price);
end;

/

select * from exhibitions;

/

PROMPT ===============================================================================
PROMPT UNIT TEST: mod_exhibition_prc
declare
 v_exhibition_id number := exhibition_seq.currval;
 v_gallery_id number := gallery_seq.currval;
 v_exhibition_name varchar2(100) := 'The Road Less Traveled';
 v_start_date date := to_date('2017-12-12', 'yyyy-mm-dd');
 v_end_date date := to_date('2017-12-24', 'yyyy-mm-dd');
 v_entry_price number := 70;
begin
   mod_exhibition_prc(p_exhibition_id => v_exhibition_id,
                     p_gallery_id => v_gallery_id,
                     p_exhibition_name => v_exhibition_name,
                     p_start_date => v_start_date,
                     p_end_date => v_end_date,
                     p_entry_price => v_entry_price);
end;

/
                   
select * from exhibitions;

/

rollback;
