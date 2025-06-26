select ACTION_COMMENTS, ACTION_FROM, ACTION_FROM_ROLE,ACTION_TO_ID,        
(case when action_to is null and action_to_role is not null then  
(select  XX_SSHR_GETAPPROVAL_PERSONS(SshrApprovalHistoryEO.ACTION_TO_ROLE,:empPersonId,        
(select req_id from xx_sshr_req_master where sshr_req_master_id=SshrApprovalHistoryEO.SSHR_REQ_MASTER_ID))   
from dual) else action_to end) as ACTION_TO,        
action_to_role, action_type, (SELECT VALUE                                        
FROM XX_SSHR_LOOKUP                                        
WHERE CODE = ACTION_TYPE AND TYPE = 'APPROVAL_STATUS') as ACTION_TYPE_NAME,        
APPROVAL_DETAIL_ID,SshrApprovalHistoryEO.CREATED_BY,        
SshrApprovalHistoryEO.CREATED_DATE,SshrApprovalHistoryEO.SSHR_REQ_MASTER_ID,SshrApprovalHistoryEO.MODIFIED_DATE,
SshrApprovalHistoryEO.MODIFIED_BY,        
FromEmp.First_name || ' ' || FromEmp.Last_name as FullFromName,        
(case when rm.status='AP' then (select emp.first_name || ' ' || emp.last_name from xx_sshr_emp_master emp where person_id =SshrApprovalHistoryEO.ACTION_TO_ID)
else
(case when action_to is null and action_to_role is not null then (select emp.first_name || ' ' || emp.last_name from xx_sshr_emp_master emp where person_id = 
(select person_id from xX_sshr_role_users_master rol   where rol.emp_id = (case when rm.REQ_ID=9 then rm.INITIATOR_ID else rm.person_id end ) 
and role_name = action_to_role)) else (select first_name || ' '|| last_name from xx_sshr_emp_master where person_id = action_to)  end )end )as FullToName, 

FromEmp.PERSON_NUMBER as FromPersonNO,
(case when rm.status='AP' then (select person_number from xx_Sshr_emp_master where person_id=SshrApprovalHistoryEO.ACTION_TO_ID)
else
(case when action_to is null and action_to_role is not null then  
(select person_number from xx_Sshr_emp_master where person_id=(select person_id from xX_sshr_role_users_master rol  
where emp_id = (case when rm.REQ_ID=9 then  
rm.INITIATOR_ID else rm.person_id end ) and role_name = action_to_role)) else   
(select person_number from xx_sshr_emp_master where person_id=action_to) end )end) as ToPersonNo        
from XX_SSHR_REQ_APPROVAL_DETAILS SshrApprovalHistoryEO inner join xx_sshr_emp_master FromEmp on FromEmp.person_id = 
SshrApprovalHistoryEO.action_from        
inner join xX_sshr_req_master rm on rm.sshr_req_master_id = SshrApprovalHistoryEO.sshr_req_master_id where 
SshrApprovalHistoryEO.SSHR_REQ_MASTER_ID =:reqMasterId order by approval_Detail_id;

select * from xx_sshr_req_master;