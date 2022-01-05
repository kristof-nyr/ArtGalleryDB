PROMPT ===============================================================================
PROMPT UNIT TEST: add_artist_prc

declare
 v_full_name VARCHAR2(50) := 'Bob Ross';
 v_birth_country VARCHAR2(50) := 'United States';
 v_age NUMBER(2) := 57;
 v_style VARCHAR2(50) := 'Landscapes';

begin
  add_artist_prc(p_full_name => v_full_name,
                 p_birth_country => v_birth_country,
                 p_age => v_age,
                 p_style => v_style);
end;

/

select * from artists;

/

PROMPT ===============================================================================
PROMPT UNIT TEST: mod_artist_prc
declare
 v_full_name VARCHAR2(50) := 'Bob Ross';
 v_birth_country VARCHAR2(50) := 'United States of America';
 v_age NUMBER(2) := 55;
 v_style VARCHAR2(50) := 'Landscapes';
begin
   mod_artist_prc(p_artist_id => artist_seq.currval,
                  p_full_name => v_full_name,
                  p_birth_country => v_birth_country,
                  p_age => v_age,
                  p_style => v_style);
end;

/
                   
select * from artists;

/

rollback;
