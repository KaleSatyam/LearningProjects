select person_id,person_number,person_name,legal_entity_name from xx_sshr_emp_master where person_number='RFD025854';
select * from xx_sshr_req_master where ref_id='ADJEMP-019997';
300000087876362
ADMIRALS TRADING CO. LLC
ADMIR_ENCASH_BASIC
300000046898323

select * from xx_sshr_approval_master where bu_name='ADMIRALS TRADING CO. LLC';
select * from xx_sshr_role_users_master where emp_id=300000087876362;

select role_name,user_id from xx_sshr_role_details where user_id=100000007452113 and role_name in (select distinct role_name from xx_sshr_role_based_le_access);
select distinct role_name from xx_sshr_role_based_le_access ;
RAR_Employee_Role
RAR_Manager_Role

select ticket_report_display,housing_alloc_report_display,housing_Cost_display,
Custody_General_Report_Display,Ticket_Issued_To_Employee_Display,Print_Travel_Order_Report_Display,Ticket_Reentry_Balance_Report_Display,
Time_Management_Exception_Report_Display,
SERVICE_REQ_REPORT,TCK_REENT_FOR_NON_HR,TICKET_ACCRUAL_DISPLAY from xx_sshr_report_security_dtl where role_name='RAR_Fin_Reports_Role_HO';

select  element_seq,element_name,element_code,element_classification,min_validation,max_validation from xx_sshr_element_name_classification;



select *  from xx_sshr_req_master order by 1 desc; where person_id=100000007456357;

--delete from xx_sshr_loan_master where sshr_req_master_id=67386;
--delete from xx_sshr_update_loan_master where sshr_request_master_id=59947;
--select * from xx_sshr_ticket_encash_dtl where sshr_req_master_id=20854;

--CER-011787 CER-012198

delete from xx_sshr_duty_joining_master where sshr_req_master_id=21316;
delete from xx_sshr_duty_joining_leaves where duty_joining_req_id=4130;

delete from xx_sshr_notification_master where object_id=21316;

delete  from xx_sshr_notification_dtl where notif_master_id in (15173,15174);

delete  from xx_sshr_req_approval_details where sshr_req_master_id=21316;

delete from xx_sshr_element_entry_dtl where req_master_id=21316;

commit;

select * from xx_sshr_emp_payment_methods;
select * from xx_sshr_approval_master order by 1 desc;
select * from xx_sshr_role_users_master;

select * from xx_sshr_approval_master where bu_name='ALRASHED CEMENT CO.' and APPROVAL_TYPE='ACO_UPD_LOAN_BASIC';
100000007454533
ACO_UPD_LOAN_BASIC
ALRASHED CEMENT CO.


--------------------

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

---------------------------------------------------

select ACTION_COMMENTS, ACTION_FROM, ACTION_FROM_ROLE,      
(case when action_to is null and action_to_role is not null then (select  XX_SSHR_GETAPPROVAL_PERSONS(SshrApprovalHistoryEO.ACTION_TO_ROLE,:empPersonId,      
(select req_id from xx_sshr_req_master where sshr_req_master_id=SshrApprovalHistoryEO.SSHR_REQ_MASTER_ID)) from dual) else action_to end) as ACTION_TO,      
action_to_role, action_type, (SELECT VALUE                                      
FROM XX_SSHR_LOOKUP                                      
WHERE CODE = ACTION_TYPE AND TYPE = 'APPROVAL_STATUS') as ACTION_TYPE_NAME,      
APPROVAL_DETAIL_ID,SshrApprovalHistoryEO.CREATED_BY,      
SshrApprovalHistoryEO.CREATED_DATE,SshrApprovalHistoryEO.SSHR_REQ_MASTER_ID,SshrApprovalHistoryEO.MODIFIED_DATE,SshrApprovalHistoryEO.MODIFIED_BY,      
FromEmp.First_name || ' ' || FromEmp.Last_name as FullFromName,      
(case when action_to is null and action_to_role is not null then (select emp.first_name || ' ' ||
emp.last_name from xx_sshr_emp_master emp where person_id = (select person_id from xX_sshr_role_users_master rol
where rol.emp_id = rm.person_id and role_name = action_to_role)) else (select first_name || ' '|| last_name from xx_sshr_emp_master 
where person_id = action_to)  end )as FullToName,      
FromEmp.PERSON_NUMBER as FromPersonNO,      
(case when action_to is null and action_to_role is not null then (select person_number from xx_Sshr_emp_master where person_id=(select person_id from xX_sshr_role_users_master where emp_id = rm.person_id and role_name = action_to_role)) else (select person_number from xx_sshr_emp_master where person_id=action_to) end )      
 as ToPersonNo      
from XX_SSHR_REQ_APPROVAL_DETAILS SshrApprovalHistoryEO inner join xx_sshr_emp_master FromEmp on FromEmp.person_id = SshrApprovalHistoryEO.action_from      
inner join xX_sshr_req_master rm on rm.sshr_req_master_id = SshrApprovalHistoryEO.sshr_req_master_id where SshrApprovalHistoryEO.SSHR_REQ_MASTER_ID =:reqMasterId order by approval_Detail_id;
