--Filling data: Addresses...
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
--Filling data -> Galleries...
begin
  add_gallery_prc(p_gallery_name => 'Pécsi Galéria',p_address_id => 5000);
  
  add_gallery_prc(p_gallery_name => 'Ludwig Múzeum',p_address_id => 5001);
  
  add_gallery_prc(p_gallery_name => 'Modern és Kortárs Művészeti Központ',p_address_id => 5002);
  
  add_gallery_prc(p_gallery_name => 'MűvészetMalom', p_address_id => 5003);
  
  add_gallery_prc(p_gallery_name => 'Ateliers Pro Arts', p_address_id => 5004);
  
  add_gallery_prc(p_gallery_name => 'Deák Erika Galéria', p_address_id => 5005);
  
  add_gallery_prc(p_gallery_name => 'GENEZIS Kortárs Művészeti Galéria', p_address_id => 5006);
  
  add_gallery_prc(p_gallery_name => 'Godot Galéria', p_address_id => 5007);
  
  add_gallery_prc(p_gallery_name => 'Zsdrál Design & Art', p_address_id => 5008);
end;
/
--Filling data -> Reviews...
begin
  add_review_prc(p_gallery_id => 2000, p_review_text => 'Egész jó, nem csalódtam', p_rating => 4);
  
  add_review_prc(p_gallery_id => 2000, p_review_text => 'Nem a legjobb élményem, de nem is rossz', p_rating => 3);
  
  add_review_prc(p_gallery_id => 2002, p_review_text => 'Kivételesen jó design és megvalósítás, biztos jövök újra', p_rating => 5);
  
  add_review_prc(p_gallery_id => 2003, p_review_text => 'Ez nem nevezhető galériának', p_rating => 1);
  
  add_review_prc(p_gallery_id => 2003, p_review_text => 'Rosszul esik, de le kell értékelnem. Nem éri meg az árát.', p_rating => 1);
  
  add_review_prc(p_gallery_id => 2003, p_review_text => 'Teljes mértékben elkeserítő', p_rating => 2);
  
  add_review_prc(p_gallery_id => 2005, p_review_text => 'Kellemes felfrissülés a mindennapók monotonitásából', p_rating => 4);
  
  add_review_prc(p_gallery_id => 2006, p_review_text => 'Nagyon jó kivitelezés, a hangulat is a toppon volt', p_rating => 5);
  
  add_review_prc(p_gallery_id => 2008, p_review_text => 'Fantasztikus. Teljesen levett a lábamról a kortárs művészet és a galéria prezentációja', p_rating => 5);
end;
/
--Filling data -> Exhibitions...
begin
  add_exhibition_prc(p_gallery_id => 2000,p_exhibition_name => 'Teljesen reális kiállítás',p_start_date => to_date('2021-07-13', 'yyyy-mm-dd'), p_end_date => to_date('2021-07-18', 'yyyy-mm-dd'), p_entry_price => 2500);
  
  add_exhibition_prc(p_gallery_id => 2000,p_exhibition_name => 'Betekintés a színfalak mögé',p_start_date => to_date('2022-03-20', 'yyyy-mm-dd'), p_end_date => to_date('2022-03-27', 'yyyy-mm-dd'), p_entry_price => 1500);
  
  add_exhibition_prc(p_gallery_id => 2001,p_exhibition_name => 'Szárnyaló kreativitás',p_start_date => to_date('2022-04-01', 'yyyy-mm-dd'), p_end_date => to_date('2021-04-15', 'yyyy-mm-dd'), p_entry_price => 3000);
  
  add_exhibition_prc(p_gallery_id => 2001,p_exhibition_name => 'IDŐGÉP',p_start_date => to_date('2022-01-10', 'yyyy-mm-dd'), p_end_date => to_date('2022-02-01', 'yyyy-mm-dd'), p_entry_price => 1600);
  
  add_exhibition_prc(p_gallery_id => 2002,p_exhibition_name => 'Idilltől a végezetekig',p_start_date => to_date('2021-11-25', 'yyyy-mm-dd'), p_end_date => to_date('2021-12-05', 'yyyy-mm-dd'), p_entry_price => 4500);
  
  add_exhibition_prc(p_gallery_id => 2003,p_exhibition_name => 'A látható láthatatlan',p_start_date => to_date('2022-03-01', 'yyyy-mm-dd'), p_end_date => to_date('2022-03-15', 'yyyy-mm-dd'), p_entry_price => 1800);
  
  add_exhibition_prc(p_gallery_id => 2004,p_exhibition_name => 'Modern idők',p_start_date => to_date('2022-01-15', 'yyyy-mm-dd'), p_end_date => to_date('2022-01-20', 'yyyy-mm-dd'), p_entry_price => 1300);
  
  add_exhibition_prc(p_gallery_id => 2004,p_exhibition_name => 'Lépésváltás',p_start_date => to_date('2022-01-23', 'yyyy-mm-dd'), p_end_date => to_date('2022-01-30', 'yyyy-mm-dd'), p_entry_price => 1700);
  
  add_exhibition_prc(p_gallery_id => 2005,p_exhibition_name => 'Fordulópontok',p_start_date => to_date('2021-10-23', 'yyyy-mm-dd'), p_end_date => to_date('2021-10-30', 'yyyy-mm-dd'), p_entry_price => 5000);
  
  add_exhibition_prc(p_gallery_id => 2006,p_exhibition_name => 'Európai művészet',p_start_date => to_date('2022-03-13', 'yyyy-mm-dd'), p_end_date => to_date('2022-03-20', 'yyyy-mm-dd'), p_entry_price => 2100);
  
  add_exhibition_prc(p_gallery_id => 2006,p_exhibition_name => 'Ókori Egyiptom',p_start_date => to_date('2022-05-01', 'yyyy-mm-dd'), p_end_date => to_date('2022-05-11', 'yyyy-mm-dd'), p_entry_price => 1900);
  
  add_exhibition_prc(p_gallery_id => 2007,p_exhibition_name => 'Két paletta',p_start_date => to_date('2021-10-01', 'yyyy-mm-dd'), p_end_date => to_date('2021-10-30', 'yyyy-mm-dd'), p_entry_price => 1200);
  
  add_exhibition_prc(p_gallery_id => 2008,p_exhibition_name => 'Mysterlight fényfesztivál',p_start_date => to_date('2021-12-24', 'yyyy-mm-dd'), p_end_date => to_date('2021-12-31', 'yyyy-mm-dd'), p_entry_price => 1000);

end;
/
--Filling data -> Artists...
begin
  add_artist_prc(p_full_name => 'Reigl Judit',p_birth_country => 'Ausztria',p_age => 42 ,p_style => 'Kortársművész');
  
  add_artist_prc(p_full_name => 'Nádler István',p_birth_country => 'Magyarország',p_age => 38 ,p_style => 'Reneszánsz');
  
  add_artist_prc(p_full_name => 'Lakner László',p_birth_country => 'Magyarország',p_age => 51 ,p_style => 'Kortársművész');
  
  add_artist_prc(p_full_name => 'Bak Imre',p_birth_country => 'Szerbia',p_age => 34 ,p_style => 'Absztrakt');
  
  add_artist_prc(p_full_name => 'Keserű Ilona',p_birth_country => 'Magyarország',p_age => 29 ,p_style => 'Neoreneszánsz');
  
  add_artist_prc(p_full_name => 'Molnár Vera',p_birth_country => 'Magyarország',p_age => 40 ,p_style => 'Fotórealizmus');
  
  add_artist_prc(p_full_name => 'Ackermann Rita',p_birth_country => 'Csehország',p_age => 31 ,p_style => 'Kortársművész');
  
  add_artist_prc(p_full_name => 'Konok Tamás',p_birth_country => 'Ukrajna',p_age => 44 ,p_style => 'Eklektika');
  
  add_artist_prc(p_full_name => 'Konkoly Gyula',p_birth_country => 'Magyarország',p_age => 63 ,p_style => 'Absztrakt');
  
  add_artist_prc(p_full_name => 'Molnár Sándor',p_birth_country => 'Szlovákia',p_age => 37 ,p_style => 'Fotórealizmus');
  
  add_artist_prc(p_full_name => 'Szűcs Attila',p_birth_country => 'Magyarország',p_age => 47 ,p_style => 'Impresszionizmus');
  
  add_artist_prc(p_full_name => 'Maurer Dóta',p_birth_country => 'Szlovénia',p_age => 27 ,p_style => 'Kortársművész');
end;
/
--Filling data -> Artworks...
begin
  add_artwork_prc(p_artist => 1000, p_made_in => to_date('1984-05-12','yyyy-mm-dd') , p_title => 'Gomolygás', p_style => 'Kortársművészet', p_price => 44000000 );
  
  add_artwork_prc(p_artist => 1000, p_made_in => to_date('1986-01-21','yyyy-mm-dd') , p_title => 'Csavarás', p_style => 'Kortársművészet', p_price => 38000000 );

  add_artwork_prc(p_artist => 1001, p_made_in => to_date('1981-07-07','yyyy-mm-dd') , p_title => 'Szisztéma két rétegben', p_style => 'Reneszánsz', p_price => 32000000 );

  add_artwork_prc(p_artist => 1002, p_made_in => to_date('1969-12-04','yyyy-mm-dd') , p_title => 'Rózsák', p_style => 'Kortársművészet', p_price => 36000000 );

  add_artwork_prc(p_artist => 1003, p_made_in => to_date('1969-09-09','yyyy-mm-dd') , p_title => 'Narancs', p_style => 'Absztrakt', p_price => 39000000 );

  add_artwork_prc(p_artist => 1003, p_made_in => to_date('1971-04-20','yyyy-mm-dd') , p_title => 'Zöld', p_style => 'Absztrakt', p_price => 27000000 );

  add_artwork_prc(p_artist => 1004, p_made_in => to_date('1995-07-10','yyyy-mm-dd') , p_title => 'Cérnás', p_style => 'Neoreneszánsz', p_price => 28000000);

  add_artwork_prc(p_artist => 1005, p_made_in => to_date('2004-08-22','yyyy-mm-dd') , p_title => 'Fájdalom', p_style => 'Fotorealizmus', p_price => 7000000 );

  add_artwork_prc(p_artist => 1006, p_made_in => to_date('2016-10-10','yyyy-mm-dd') , p_title => 'Digitális romantika', p_style => 'Kortársművészet', p_price => 62000000 );

  add_artwork_prc(p_artist => 1007, p_made_in => to_date('1964-02-23','yyyy-mm-dd') , p_title => 'Konyhai csendélet', p_style => 'Eklektika', p_price => 13000000 );
  
  add_artwork_prc(p_artist => 1008, p_made_in => to_date('2013-06-06','yyyy-mm-dd') , p_title => 'Ecriture en masse', p_style => 'Absztrakt', p_price => 5000000 );
    
  add_artwork_prc(p_artist => 1008, p_made_in => to_date('2008-07-21','yyyy-mm-dd') , p_title => 'Expérience', p_style => 'Absztrakt', p_price => 4500000 );

  add_artwork_prc(p_artist => 1009, p_made_in => to_date('2019-03-14','yyyy-mm-dd') , p_title => 'Celan', p_style => 'Fotórealizmus', p_price => 12500000 );

  add_artwork_prc(p_artist => 1010, p_made_in => to_date('1974-02-23','yyyy-mm-dd') , p_title => 'La Fenice', p_style => 'Impresszionizmus', p_price => 2000000 );

  add_artwork_prc(p_artist => 1011, p_made_in => to_date('2010-05-20','yyyy-mm-dd') , p_title => 'Égő giliszta', p_style => 'Kortársművészet', p_price => 15000000 );

  add_artwork_prc(p_artist => 1011, p_made_in => to_date('2012-04-14','yyyy-mm-dd') , p_title => 'Bumeráng összeolvadás', p_style => 'Kortársművészet', p_price => 13500000 );

  add_artwork_prc(p_artist => 1011, p_made_in => to_date('2014-08-03','yyyy-mm-dd') , p_title => 'Lány a rakétán', p_style => 'Kortársművészet', p_price => 14000000 );

  add_artwork_prc(p_artist => 1011, p_made_in => to_date('2016-11-11','yyyy-mm-dd') , p_title => 'Elektro-art', p_style => 'Kortársművészet', p_price => 10000000 );

end;
/
-- Filling data -> Featured Artworks...
begin
insert into featured_artworks(exhibition_id, artwork_id)
values(3000,1);
insert into featured_artworks(exhibition_id, artwork_id)
values(3000,2);
insert into featured_artworks(exhibition_id, artwork_id)
values(3000,3);
insert into featured_artworks(exhibition_id, artwork_id)
values(3001,4);
insert into featured_artworks(exhibition_id, artwork_id)
values(3002,5);
insert into featured_artworks(exhibition_id, artwork_id)
values(3003,6);
insert into featured_artworks(exhibition_id, artwork_id)
values(3003,7);
insert into featured_artworks(exhibition_id, artwork_id)
values(3004,8);
insert into featured_artworks(exhibition_id, artwork_id)
values(3005,9);
insert into featured_artworks(exhibition_id, artwork_id)
values(3006,10);
insert into featured_artworks(exhibition_id, artwork_id)
values(3007,11);
insert into featured_artworks(exhibition_id, artwork_id)
values(3008,12);
insert into featured_artworks(exhibition_id, artwork_id)
values(3008,13);
insert into featured_artworks(exhibition_id, artwork_id)
values(3009,14);
insert into featured_artworks(exhibition_id, artwork_id)
values(3010,15);
insert into featured_artworks(exhibition_id, artwork_id)
values(3011,16);
insert into featured_artworks(exhibition_id, artwork_id)
values(3012,17);
insert into featured_artworks(exhibition_id, artwork_id)
values(3012,18);
end;
/
commit;
