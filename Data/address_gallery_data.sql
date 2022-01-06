--Adding gallery and address data...
begin
add_address_prc(p_country_code => 'HUN', p_zip_code => 7621, p_city => 'Pécs', p_street => 'Széchenyi tér', p_house_number => 14);
add_gallery_prc(p_gallery_name => 'Pécsi Galéria',p_address_id => address_seq.currval);

add_address_prc(p_country_code => 'HUN', p_zip_code => 1095, p_city => 'Budapest', p_street => 'Komor Marcell utca', p_house_number => 1);
add_gallery_prc(p_gallery_name => 'Ludwig Múzeum',p_address_id => address_seq.currval);

add_address_prc(p_country_code => 'HUN', p_zip_code => 4026, p_city => 'Debrecen', p_street => 'Baltazár Dezső tér', p_house_number => 1);
add_gallery_prc(p_gallery_name => 'Modern és Kortárs Művészeti Központ',p_address_id => address_seq.currval);

add_address_prc(p_country_code => 'HUN', p_zip_code => 2000, p_city => 'Szentendre', p_street => 'Bogdányi út', p_house_number => 32);
add_gallery_prc(p_gallery_name => 'MűvészetMalom', p_address_id => address_seq.currval);

add_address_prc(p_country_code => 'HUN', p_zip_code => 1085, p_city => 'Budapest', p_street => 'Horánszky utca', p_house_number => 5);
add_gallery_prc(p_gallery_name => 'Ateliers Pro Arts', p_address_id => address_seq.currval);

add_address_prc(p_country_code => 'HUN', p_zip_code => 1061, p_city => 'Budapest', p_street => 'Mozsár utca', p_house_number => 1);
add_gallery_prc(p_gallery_name => 'Deák Erika Galéria', p_address_id => address_seq.currval);

add_address_prc(p_country_code => 'HUN', p_zip_code => 1052, p_city => 'Budapest', p_street => 'Váci utca', p_house_number => 19);
add_gallery_prc(p_gallery_name => 'GENEZIS Kortárs Művészeti Galéria', p_address_id => address_seq.currval);

add_address_prc(p_country_code => 'HUN', p_zip_code => 1075, p_city => 'Budapest', p_street => 'Madách Imre út', p_house_number => 8);
add_gallery_prc(p_gallery_name => 'Godot Galéria', p_address_id => address_seq.currval);

add_address_prc(p_country_code => 'HUN', p_zip_code => 7621, p_city => 'Pécs', p_street => 'Király utca', p_house_number => 29);
add_gallery_prc(p_gallery_name => 'Zsdrál Design & Art', p_address_id => address_seq.currval);
end;
/
select * from galleries;
