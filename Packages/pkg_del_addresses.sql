CREATE OR REPLACE PACKAGE del_addresses IS

  PROCEDURE delete_address;

END del_addresses;

/

CREATE OR REPLACE PACKAGE BODY del_addresses IS

  PROCEDURE delete_address IS
    CURSOR address_cur IS
      SELECT * FROM address a WHERE a.dml_flag LIKE 'D';
  BEGIN
    FOR i IN address_cur
    LOOP
      DELETE FROM address a WHERE a.address_id = i.address_id;
    END LOOP;
    COMMIT;
  END;

END del_addresses;

/
