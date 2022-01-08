create table error_log(
       error_id number,
       error_message varchar2(500),
       error_value varchar2(500),
       error_time timestamp default sysdate,
       error_cause varchar2(100)
);
