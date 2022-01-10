BEGIN
  dbms_scheduler.create_job(job_name        => 'artwork_deletion_job',
                            job_type        => 'STORED_PROCEDURE',
                            job_action      => 'del_artworks.delete_artwork',
                            start_date      => SYSDATE,
                            end_date        => SYSDATE + 60,
                            repeat_interval => 'freq=daily; byhour=23; byminute=20',
                            comments        => 'This jobs deletes marked artworks at 23:20 each day');
END;
/
