select in_custom_list_char(:dep)  from dual;
select em.person_id,em.person_number,em.department,em.legal_entity_name from  xx_sshr_emp_master em where person_number='HOC010807';
select * from xx_sshr_tckt_encash_leave_dtl where person_id=100000007456525 order by 1 desc;
select * from xx_sshr_req_master;
commit;
select* from xx_sshr_emp_master where PERSON_number='EFS019108';
select * from xx_sshr_lop_test_tbl;

select * from xx_otl_transaction_data where punch_date like '%-JUL-22%' order by 1 desc;
delete from xx_otl_transaction_data where punch_date like '%-JUL-22%';
commit;
select code,value from xx_sshr_lookup where type='CHARGE_TO';

select * from xx_sshr_approval_master where bu_name='SAUDI FILTERS PRODUCTS FACTORY CO.';
select * from xx_sshr_tckt_encash_leave_dtl where person_id=300000066332343;

update xx_sshr_tckt_encash_leave_dtl set unique_key=300000048888455 , leave_difference_days=1 where leave_id=300000048888455;
update xx_sshr_tckt_encash_leave_dtl set unique_key=300000058040016 , leave_difference_days=0 where leave_id=300000058040016;
update xx_sshr_tckt_encash_leave_dtl set unique_key=300000049223064 , leave_difference_days=341 where leave_id=300000049223064;
update xx_sshr_tckt_encash_leave_dtl set unique_key=300000040731313 , leave_difference_days=1 where leave_id=300000040731313;
update xx_sshr_tckt_encash_leave_dtl set unique_key=300000057994002 , leave_difference_days=28 where leave_id=300000057994002;
update xx_sshr_tckt_encash_leave_dtl set unique_key=300000045446880 , leave_difference_days=1 where leave_id=300000045446880;
update xx_sshr_tckt_encash_leave_dtl set unique_key=300000033437543 , leave_difference_days=1 where leave_id=300000033437543;
update xx_sshr_tckt_encash_leave_dtl set unique_key=300000046797109 , leave_difference_days=4 where leave_id=300000046797109;
update xx_sshr_tckt_encash_leave_dtl set unique_key=300000049163957 , leave_difference_days=18 where leave_id=300000049163957;
commit;

select * from xx_sshr_certificate_type where certificate_type='???? ?????? ??? ??????? ????? -???? ????' and 
approval_type in('AWPF_CERT_1','AWPF_CERT_2','AWPF_CERT_3','AWPF_CERT_4','AWPF_CERT_5');

ADJEMP-020833
delete from xx_sshr_req_master where SSHR_REQ_MASTER_ID=70494;

--Delete from xx_sshr_adjus_req_emp_mst where sshr_req_master_id=20841;
--select * from xx_sshr_exception_log;
--
--select * from xx_sshr_approval_master;

--select *  from xx_sshr_req_master where ref_id='PRENT-019702';
delete  from xx_sshr_loan_master where sshr_req_master_id=70494;
--select *  from xx_sshr_loan_master where sshr_req_master_id=52522;

--delete  from xx_sshr_duty_joining_master where sshr_req_master_id=20929;
delete from xx_sshr_notification_master where object_id=70494;

delete  from xx_sshr_notification_dtl where notif_master_id in (54091);

Delete  from xx_sshr_req_approval_details where sshr_req_master_id=70494;
delete from xx_sshr_element_entry_dtl where req_master_id=70494;
commit;
select * from xx_sshr_approval_master where approval_type like '%LOAN_BASIC' order by 2 ,4 ASC;
select * from xx_sshr_emp_master where person_number='SFI007393';

select approval_level,person_name,position,person_number from (select apMst.approval_level,            
case when apMst.approval_role='Line Manager' then (select person_name from xx_sshr_emp_master where person_id=(select manager_id from xx_sshr_emp_master where person_id=:empPersonId))             
when apMst.approval_role='Line Manager 2' then (select person_name from xx_sshr_emp_master where person_id=(select TO_NUMBER(second_mngr_id) from xx_sshr_emp_master where person_id=:empPersonId))             
when apMst.approval_role='Line Manager 3' then (select person_name from xx_sshr_emp_master where person_id=(select third_mngr_id from xx_sshr_emp_master where person_id=:empPersonId))             
when apMst.approval_role='Line Manager 4' then (select person_name from xx_sshr_emp_master where person_id=(select eos_manager from xx_sshr_emp_master where person_id=:empPersonId))             
when apMst.approval_role='Companion Employee' then (select person_name from xx_sshr_emp_master where person_id=:companionId)             
else (select person_name from xx_sshr_emp_master where person_id=(select person_id from xx_sshr_role_users_master where role_name=apMst.approval_role and emp_id=:empPersonId)) end as person_name,            
case when apMst.approval_role='Line Manager' then (select position from xx_sshr_emp_master where person_id=(select manager_id from xx_sshr_emp_master where person_id=:empPersonId))             
when apMst.approval_role='Line Manager 2' then (select position from xx_sshr_emp_master where person_id=(select TO_NUMBER(second_mngr_id) from xx_sshr_emp_master where person_id=:empPersonId))             
when apMst.approval_role='Line Manager 3' then (select position from xx_sshr_emp_master where person_id=(select third_mngr_id from xx_sshr_emp_master where person_id=:empPersonId))             
when apMst.approval_role='Line Manager 4' then (select position from xx_sshr_emp_master where person_id=(select eos_manager from xx_sshr_emp_master where person_id=:empPersonId))             
when apMst.approval_role='Companion Employee' then (select position from xx_sshr_emp_master where person_id=:companionId)             
else (select position from xx_sshr_emp_master where person_id=(select person_id from xx_sshr_role_users_master where role_name=apMst.approval_role and  emp_id=:empPersonId)) end as position,            
case when apMst.approval_role='Line Manager' then (select person_number from xx_sshr_emp_master where person_id=(select manager_id from xx_sshr_emp_master where person_id=:empPersonId))             
when apMst.approval_role='Line Manager 2' then (select person_number from xx_sshr_emp_master where person_id=(select TO_NUMBER(second_mngr_id) from xx_sshr_emp_master where person_id=:empPersonId))             
when apMst.approval_role='Line Manager 3' then (select person_number from xx_sshr_emp_master where person_id=(select third_mngr_id from xx_sshr_emp_master where person_id=:empPersonId))             
when apMst.approval_role='Line Manager 4' then (select person_number from xx_sshr_emp_master where person_id=(select eos_manager from xx_sshr_emp_master where person_id=:empPersonId))             
when apMst.approval_role='Companion Employee' then (select person_number from xx_sshr_emp_master where person_id=:companionId)             
else (select person_number from xx_sshr_emp_master where person_id=(select person_id from xx_sshr_role_users_master where role_name=apMst.APPROVAL_ROLE and emp_id=:empPersonId)) end as person_number             
from xx_sshr_approval_master apMst where apMst.approval_type=:reqType and apMst.bu_name=:buName-- and person_name is not null          
) where person_name is not null;


SELECT DutyJoiningEO.ADDITIONAL_LEAVES, 
       DutyJoiningEO.DELAY_DAYS, 
       DutyJoiningEO.DUTY_JOINING_REQ_ID, 
       DutyJoiningEO.LEAVE_ID, 
       DutyJoiningEO.LEAVE_NAME, 
       DutyJoiningEO.REENTRY_DATE, 
       DutyJoiningEO.SSHR_REQ_MASTER_ID, 
       DutyJoiningEO.TYPE_OF_DUTY_JOINING, 
       DutyJoiningEO.WEEKEND_DAYS, 
       DutyJoiningEO.COMMENTS
FROM  XX_SSHR_DUTY_JOINING_MASTER DutyJoiningEO 