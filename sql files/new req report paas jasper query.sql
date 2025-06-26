select * from(select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID) as requestbynumber,
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID) as requestbyname,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id) as requestfornumber,
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id)as requestforname,(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id)as department,
req.ref_id,'Loan request' as requestType,
(case when  req.PENDING_PERSON_ID is null then
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role_name=req.PENDING_PERSON_ROLE))else
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=req.PENDING_PERSON_ID)
end )
as pendingOn, req.req_date as Request_Date,req.status as Status
from  xx_sshr_req_master req inner join xx_sshr_loan_master loan on
loan.sshr_req_master_id=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id where req.person_id in ($P!{PERSON_NAME_IN} ) and emp.legal_entity_name in ($P!{LEGAL_ENTITY_NAME} ) and req.status not in ('RE','AP','WD')
union
select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID),
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID),(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id),
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id),(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id),
req.ref_id,'Expence Claim',
(case when  req.PENDING_PERSON_ID is null then
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role_name=req.PENDING_PERSON_ROLE))else
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=req.PENDING_PERSON_ID)
end )
as pendingOn, req.req_date as Request_Date,req.status as Status
from  xx_sshr_req_master req inner join xx_sshr_exps_master exp on
exp.sshr_req_master_id=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id where req.person_id in ($P!{PERSON_NAME_IN} ) and emp.legal_entity_name in ($P!{LEGAL_ENTITY_NAME} ) and req.status not in ('RE','AP','WD')
union
select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID),
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID),(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id),
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id),(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id),
req.ref_id,'Business Trip',
(case when  req.PENDING_PERSON_ID is null then
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role_name=req.PENDING_PERSON_ROLE))else
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=req.PENDING_PERSON_ID)
end )
as pendingOn, req.req_date as Request_Date,req.status as Status
from  xx_sshr_req_master req inner join xx_sshr_bt_parent_mst bt on
bt.sshr_req_master_id=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id where req.person_id in ($P!{PERSON_NAME_IN} ) and emp.legal_entity_name in ($P!{LEGAL_ENTITY_NAME} ) and req.status not in ('RE','AP','WD')
union
select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID),
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID),(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id),
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id),(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id),
req.ref_id,'Expence Claim',(case when  req.PENDING_PERSON_ID is null then
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role_name=req.PENDING_PERSON_ROLE))else
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=req.PENDING_PERSON_ID)
end )
as pendingOn, req.req_date as Request_Date,req.status as Status
from  xx_sshr_req_master req inner join xx_sshr_mar_aid_dtl mid on
mid.SSHR_REQ_ID=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id where req.person_id in ($P!{PERSON_NAME_IN} )  and emp.legal_entity_name in ($P!{LEGAL_ENTITY_NAME} ) and req.status not in ('RE','AP','WD')
union
select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID),
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID),(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id),
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id),(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id),
req.ref_id,'Employee Training',
(case when  req.PENDING_PERSON_ID is null then
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role_name=req.PENDING_PERSON_ROLE))else
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=req.PENDING_PERSON_ID)
end )
as pendingOn, req.req_date as Request_Date,req.status as Status
from  xx_sshr_req_master req inner join xx_sshr_emp_training_req_dtl mid on
mid.SSHR_REQ_ID=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id where req.person_id in($P!{PERSON_NAME_IN} ) and emp.legal_entity_name in ($P!{LEGAL_ENTITY_NAME} ) and req.status not in ('RE','AP','WD')
union
select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID),
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID),(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id),
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id),(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id),
req.ref_id,'Ticket Encashment Request',
(case when  req.PENDING_PERSON_ID is null then
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role_name=req.PENDING_PERSON_ROLE))else
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=req.PENDING_PERSON_ID)
end )
as pendingOn, req.req_date as Request_Date,req.status as Status
from  xx_sshr_req_master req inner join xx_sshr_ticket_encash_dtl mid on
mid.SSHR_REQ_MASTER_ID=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id where req.person_id in ($P!{PERSON_NAME_IN} ) and emp.legal_entity_name in ($P!{LEGAL_ENTITY_NAME} ) and req.status not in ('RE','AP','WD')
Union
select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID),
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID),(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id),
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id),(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id),
req.ref_id,'Training By Manager',
(case when  req.PENDING_PERSON_ID is null then
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role_name=req.PENDING_PERSON_ROLE))else
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=req.PENDING_PERSON_ID)
end )
as pendingOn, req.req_date as Request_Date,req.status as Status
from  xx_sshr_req_master req inner join xx_sshr_trng_by_mngr mid on
mid.REQ_MASTER_ID=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id where req.person_id in ($P!{PERSON_NAME_IN} ) and emp.legal_entity_name in ($P!{LEGAL_ENTITY_NAME} ) and req.status not in ('RE','AP','WD')
union
select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID),
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID),(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id),
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id),(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id),
req.ref_id,'Reentry Visa',
(case when  req.PENDING_PERSON_ID is null then
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role_name=req.PENDING_PERSON_ROLE))else
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=req.PENDING_PERSON_ID)
end )
as pendingOn, req.req_date as Request_Date,req.status as Status
from  xx_sshr_req_master req inner join xx_sshr_service_req_dtl ser on
ser.sshr_REQ_MASTER_ID=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id where ser.CREATED_FROM_SELF_SERVICE in ('Personnel Re-entry Request','Re-entry Visa Request') and
req.person_id in ($P!{PERSON_NAME_IN} ) and emp.legal_entity_name in ($P!{LEGAL_ENTITY_NAME} ) and req.status not in ('RE','AP','WD')
union
select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID),
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID),(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id),
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id),(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id),
req.ref_id,'Adjustment Request',
(case when  req.PENDING_PERSON_ID is null then
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role_name=req.PENDING_PERSON_ROLE))else
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=req.PENDING_PERSON_ID)
end )
as pendingOn, req.req_date as Request_Date,req.status as Status
from  xx_sshr_req_master req inner join xx_sshr_adjus_req_emp_mst ser on
ser.sshr_REQ_MASTER_ID=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id where req.person_id in ($P!{PERSON_NAME_IN} ) and emp.legal_entity_name in ($P!{LEGAL_ENTITY_NAME} ) and req.status not in ('RE','AP','WD')
union
select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID),
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID),(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id),
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id),(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id),
req.ref_id,'Custody Request',
(case when  req.PENDING_PERSON_ID is null then
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role_name=req.PENDING_PERSON_ROLE))else
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=req.PENDING_PERSON_ID)
end )
as pendingOn, req.req_date as Request_Date,req.status as Status
from xx_sshr_req_master req inner join xx_sshr_custody_master ser on
ser.SSHR_REQ_ID=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id where req.person_id in ($P!{PERSON_NAME_IN} ) and emp.legal_entity_name in ($P!{LEGAL_ENTITY_NAME} )  and req.status not in ('RE','AP','WD')
union
select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID),
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID),(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id),
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id),(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id),
req.ref_id,'Hiring Status after Probation request by manager',
(case when  req.PENDING_PERSON_ID is null then
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role_name=req.PENDING_PERSON_ROLE))else
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=req.PENDING_PERSON_ID)
end )
as pendingOn, req.req_date as Request_Date,req.status as Status
from xx_sshr_req_master req inner join xx_sshr_probation_master ser on
ser.SSHR_REQ_master_ID=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id where req.person_id in ($P!{PERSON_NAME_IN} ) and emp.legal_entity_name in ($P!{LEGAL_ENTITY_NAME} ) and req.status not in ('RE','AP','WD')
union
select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID),
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID),(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id),
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id),(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id),
req.ref_id,'Ticket Request',
(case when  req.PENDING_PERSON_ID is null then
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role_name=req.PENDING_PERSON_ROLE))else
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=req.PENDING_PERSON_ID)
end )
as pendingOn, req.req_date as Request_Date,req.status as Status
from xx_sshr_req_master req inner join xx_sshr_tic_details_tbl ser on
ser.REQ_master_ID=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id where req.person_id in ($P!{PERSON_NAME_IN} ) and emp.legal_entity_name in ($P!{LEGAL_ENTITY_NAME} ) and req.status not in ('RE','AP','WD')
union
select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID),
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID),(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id),
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id),(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id),
req.ref_id,'Service Request',
(case when  req.PENDING_PERSON_ID is null then
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role_name=req.PENDING_PERSON_ROLE))else
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=req.PENDING_PERSON_ID)
end )
as pendingOn, req.req_date as Request_Date,req.status as Status
from  xx_sshr_req_master req inner join xx_sshr_service_req_dtl ser on
ser.sshr_REQ_MASTER_ID=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id where ser.CREATED_FROM_SELF_SERVICE in ('Service Request') and
req.person_id in ($P!{PERSON_NAME_IN} ) and emp.legal_entity_name in ($P!{LEGAL_ENTITY_NAME} ) and req.status not in ('RE','AP','WD')
union
select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID),
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID),(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id),
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id),(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id),
req.ref_id,'Variable Element Entry Request ',
(case when  req.PENDING_PERSON_ID is null then
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role_name=req.PENDING_PERSON_ROLE))else
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=req.PENDING_PERSON_ID)
end )
as pendingOn, req.req_date as Request_Date,req.status as Status
from xx_sshr_req_master req inner join xx_sshr_var_element_parent ser on
ser.REQ_MASTER_ID=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id where req.person_id in ($P!{PERSON_NAME_IN} ) and emp.legal_entity_name in ($P!{LEGAL_ENTITY_NAME} ) and req.status not in ('RE','AP','WD')
union
select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID),
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID),(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id),
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id),(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id),
req.ref_id,'Update Loan Request',
(case when  req.PENDING_PERSON_ID is null then
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role_name=req.PENDING_PERSON_ROLE))else
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=req.PENDING_PERSON_ID)
end )
as pendingOn, req.req_date as Request_Date,req.status as Status
from xx_sshr_req_master req inner join xx_sshr_update_loan_master ser on
ser.SSHR_REQUEST_MASTER_ID=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id where req.person_id in ($P!{PERSON_NAME_IN} ) and emp.legal_entity_name in ($P!{LEGAL_ENTITY_NAME} ) and req.status not in ('RE','AP','WD')
union
select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID),
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID),(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id),
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id),(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id),
req.ref_id,'Duty Joining',
(case when  req.PENDING_PERSON_ID is null then
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role_name=req.PENDING_PERSON_ROLE))else
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=req.PENDING_PERSON_ID)
end )
as pendingOn, req.req_date as Request_Date,req.status as Status
from xx_sshr_req_master req inner join xx_sshr_duty_joining_master ser on
ser.SSHR_REQ_MASTER_ID=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id where req.person_id in ($P!{PERSON_NAME_IN} ) and emp.legal_entity_name in ($P!{LEGAL_ENTITY_NAME} ) and req.status not in ('RE','AP','WD')
union
select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID),
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID),(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id),
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id),(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id),
req.ref_id,'Certificate Request',
(case when  req.PENDING_PERSON_ID is null then
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role_name=req.PENDING_PERSON_ROLE))else
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=req.PENDING_PERSON_ID)
end )
as pendingOn, req.req_date as Request_Date,req.status as Status
from xx_sshr_req_master req inner join xx_sshr_certificate_mstr ser on
ser.SSHR_REQ_MASTER_ID=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id where req.person_id in ($P!{PERSON_NAME_IN} ) and emp.legal_entity_name in ($P!{LEGAL_ENTITY_NAME} ) and req.status not in ('RE','AP','WD')
union
select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID),
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID),(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id),
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id),(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id),
req.ref_id,'Bulk Allowance Request',
(case when  req.PENDING_PERSON_ID is null then
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role_name=req.PENDING_PERSON_ROLE))else
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=req.PENDING_PERSON_ID)
end )
as pendingOn, req.req_date as Request_Date,req.status as Status
from xx_sshr_req_master req inner join xx_sshr_bulk_allowance_mst ser on
ser.SSHR_REQ_MASTER_ID=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id where req.person_id in ($P!{PERSON_NAME_IN} ) and emp.legal_entity_name in ($P!{LEGAL_ENTITY_NAME} ) and req.status not in ('RE','AP','WD')
union
select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID),
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID),(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id),
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id),(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id),
req.ref_id,'Personal Payment methods',
(case when  req.PENDING_PERSON_ID is null then
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role_name=req.PENDING_PERSON_ROLE))else
(select emp.person_name from xx_sshr_emp_master emp where emp.person_id=req.PENDING_PERSON_ID)
end )
as pendingOn, req.req_date as Request_Date,req.status as Status
from xx_sshr_req_master req inner join xx_sshr_emp_banks ser on
ser.SSHR_REQ_MASTER_ID=req.sshr_req_master_id inner join xx_sshr_emp_payment_methods pay on 
pay.SSHR_REQ_MASTER_ID=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id  where req.person_id in ($P!{PERSON_NAME_IN} ) and emp.legal_entity_name in ($P!{LEGAL_ENTITY_NAME} ) and req.status not in ('RE','AP','WD')
) order by REQUESTTYPE Asc ;

select * from xx_sshr_req_master; where ref_id like '%LR%';
select * from xx_sshr_loan_master;
select * from xx_sshr_emp_master where person_id='100000007443313';
select * from xx_sshr_mar_aid_dtl;
select * from xx_sshr_ticket_encash_dtl;
select * from xx_sshr_var_element_parent;
select * from xx_sshr_role_users_master;

select (CASE WHEN req.created_dashboard is null THEN  (case when req.person_id=req.INITIATOR_ID then 'Employee' else 'Manager'   end)    ELSE      case req.created_dashboard     when 'Emp' then 'Employee'       when 'Manager' then 'Manager'       when 'Admin' then 'Admin'       when 'Admin_generic' then 'Admin'   end     END) as created_dashboard,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.INITIATOR_ID) as requestbynumber,
(select person_name from xx_sshr_emp_master where person_id=req.INITIATOR_ID) as requestbyname,(select person_number from xx_sshr_emp_master emp where emp.person_id=req.person_id) as requestfornumber,
(select person_name from xx_sshr_emp_master emp where emp.person_id=req.person_id)as requestforname,(select department from xx_sshr_emp_master emp where emp.person_id=req.person_id)as department,
req.ref_id,'Loan request' as requestType,
case when  req.PENDING_PERSON_ID IS NULL then
(select emps.person_name from xx_sshr_emp_master emps where emps.person_id=(select role.person_id from xx_sshr_role_users_master role where
emp_id=req.person_id and role.role_name=req.PENDING_PERSON_ROLE))else
(select emps.person_name from xx_sshr_emp_master emps where emps.person_id=req.PENDING_PERSON_ID)
end
as pendingOn,req.pending_person_id, req.req_date as Request_Date,req.status as Status
from  xx_sshr_req_master req inner join xx_sshr_loan_master loan on
loan.sshr_req_master_id=req.sshr_req_master_id inner join xx_sshr_emp_master emp on emp.person_id=req.person_id where req.person_id in (100000007443313) and req.status not in ('AP','WD')
