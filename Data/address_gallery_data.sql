--Adding address data...
begin
add_address_prc(p_country_code => 'HUN', p_zip_code => 7621, p_city => 'Pécs', p_street => 'Széchenyi tér', p_house_number => 14);

add_address_prc(p_country_code => 'HUN', p_zip_code => 1095, p_city => 'Budapest', p_street => 'Komor Marcell utca', p_house_number => 1);

add_address_prc(p_country_code => 'HUN', p_zip_code => 4026, p_city => 'Debrecen', p_street => 'Baltazár Dezső tér', p_house_number => 1);

add_address_prc(p_country_code => 'HUN', p_zip_code => 2000, p_city => 'Szentendre', p_street => 'Bogdányi út', p_house_number => 32);

add_address_prc(p_country_code => 'HUN', p_zip_code => 1085, p_city => 'Budapest', p_street => 'Horánszky utca', p_house_number => 5);

add_address_prc(p_country_code => 'HUN', p_zip_code => 1061, p_city => 'Budapest', p_street => 'Mozsár utca', p_house_number => 1);

add_address_prc(p_country_code => 'HUN', p_zip_code => 1052, p_city => 'Budapest', p_street => 'Váci utca', p_house_number => 19);

add_address_prc(p_country_code => 'HUN', p_zip_code => 1075, p_city => 'Budapest', p_street => 'Madách Imre út', p_house_number => 8);

add_address_prc(p_country_code => 'HUN', p_zip_code => 7621, p_city => 'Pécs', p_street => 'Király utca', p_house_number => 29);
end;
/
select * from address;
