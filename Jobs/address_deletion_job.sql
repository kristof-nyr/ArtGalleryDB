BEGIN
  dbms_scheduler.create_job(job_name        => 'address_deletion_job',
                            job_type        => 'STORED_PROCEDURE',
                            job_action      => 'del_addresses.delete_address',
                            start_date      => SYSDATE,
                            end_date        => SYSDATE + 60,
                            repeat_interval => 'freq=daily; byhour=23; byminute=0',
                            comments        => 'This jobs deletes marked addresses at 23:00 each day');
END;
/
