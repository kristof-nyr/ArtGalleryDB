BEGIN
  dbms_scheduler.create_job(job_name        => 'exhibition_deletion_job',
                            job_type        => 'STORED_PROCEDURE',
                            job_action      => 'del_exhibitions.delete_exhibition',
                            start_date      => SYSDATE,
                            end_date        => SYSDATE + 60,
                            repeat_interval => 'freq=daily; byhour=23; byminute=30',
                            comments        => 'This jobs deletes marked exhibitions at 23:30 each day');
END;
/
