BEGIN
  dbms_scheduler.create_job(job_name        => 'artist_deletion_job',
                            job_type        => 'STORED_PROCEDURE',
                            job_action      => 'del_artists.delete_artists',
                            start_date      => SYSDATE,
                            end_date        => SYSDATE + 60,
                            repeat_interval => 'freq=daily; byhour=23; byminute=10',
                            comments        => 'This jobs deletes marked artists at 23:10 each day');
END;
/
