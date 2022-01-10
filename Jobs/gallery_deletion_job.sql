BEGIN
  dbms_scheduler.create_job(job_name        => 'gallery_deletion_job',
                            job_type        => 'STORED_PROCEDURE',
                            job_action      => 'del_galleries.delete_gallery',
                            start_date      => SYSDATE,
                            end_date        => SYSDATE + 60,
                            repeat_interval => 'freq=daily; byhour=23; byminute=40',
                            comments        => 'This jobs deletes marked addresses at 23:40 each day');
END;
/
