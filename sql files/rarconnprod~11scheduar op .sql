select PERSON_ID,LEGAL_ENTITY_NAME,Bu_name,PERSON_NAME from xx_sshr_emp_master where person_number='HOC010821';
JMS227730

HOC008795

HOC010856

select * from xx_sshr_role_users_master;

select  to_char(RUN_START_TIME ,'dd-mon-yyyy hh24:mi:ss'), to_timestamp(RUN_START_TIME ,'dd-mon-yyyy hh24:mi:ss.ff '), to_timestamp(RUN_START_TIME) from Ei_scheduler_setup_logs; -- where  to_char(RUN_START_TIME ,'dd-mon-yyyy hh24:mi:ss') '12-apr-2022 21:30:00';

select SERVICE_TYPE, to_char(RUN_START_TIME,'dd-mon-yyyy hh24:mi:ss') RUN_START_TIME, to_char(RUN_COMPLETE_TIME,'dd-mon-yyyy hh24:mi:ss') RUN_COMPLETE_TIME, STATUS, RECORDS_PROCESSED
from Ei_scheduler_setup_logs where to_char (RUN_START_TIME, 'dd/mm/yyyy hh24:mi:ss')
between '04/MAY/2022 21:00:00' and '05/MAY/2022 09:00:00' and RUN_START_TIME like '%APR%' order by log_id desc ;
--where RUN_START_TIME between 
select * from XX_SSHR_LOAN_END_DATE_FROM_SAAS;
select  *from Ei_scheduler_setup_logs
where RUN_START_TIME between '12-APR-2022 21:30:00' and '20-01-01 23:30:00';
select * from Ei_scheduler_setup_logs where ;

select SERVICE_TYPE, RUN_START_TIME, RUN_COMPLETE_TIME, STATUS, RECORDS_PROCESSED from Ei_scheduler_setup_logs order by log_id desc;

