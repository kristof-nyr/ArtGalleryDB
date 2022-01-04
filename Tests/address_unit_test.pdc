PROMPT ===============================================================================
PROMPT UNIT TEST: add_address_prc

declare
  v_country_code VARCHAR2(3) := 'HUN';
  v_zip_code NUMBER := 7400;
  v_city VARCHAR2(50) := 'Kaposvar';
  v_street VARCHAR2(50) := 'Kossuth Lajos';
  v_house_number NUMBER := '43';

begin
  add_address_prc(p_country_code => v_country_code,
                  p_zip_code => v_zip_code,
                  p_city => v_city,
                  p_street => v_street,
                  p_house_number => v_house_number);
end;

/

select * from address;

/

PROMPT ===============================================================================
PROMPT UNIT TEST: mod_address_prc
declare
  v_country_code VARCHAR2(3) := 'HUN';
  v_street VARCHAR2(50) := 'Kossuth Lajos';
  v_house_number NUMBER := '43';
  v_mod_zip_code NUMBER := 1111;
  v_mod_city VARCHAR2(50) := 'Budapest';
begin
   mod_address_prc(p_address_id => address_seq.currval,
                   p_country_code => v_country_code,
                   p_zip_code => v_mod_zip_code,
                   p_city => v_mod_city,
                   p_street => v_street,
                   p_house_number => v_house_number);
end;

/
                   
select * from address;

/

rollback;
