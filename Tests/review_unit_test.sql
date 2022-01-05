PROMPT ===============================================================================
PROMPT UNIT TEST: add_review_prc

declare
  v_gallery_id number := gallery_seq.currval;
  v_review_text varchar2(300) := 'Nagyon jó, ilyen galériát sosem láttam még!';
  v_rating number := 5;

begin
    add_review_prc(p_gallery_id => v_gallery_id,
                 p_review_text => v_review_text,
                 p_rating => v_rating);
end;

/

select * from gallery_review;
