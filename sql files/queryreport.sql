select dep.person_number,dep.person_id,dep.dependent_name,dep.person_type,dep.employee_id,empMst.legal_entity_name,
XX_GET_ACCUMULATED_BALANCE(dep.employee_id,dep.person_type,TO_DATE($P{DEP_DATE},'DD-MM-YYYY'),$P{TICKET_TYPE},dep.person_id) as accumulatedBalance,
(select nvl(sum(deducted_balance),0) as depsUsedBalance from xx_sshr_tic_details_tbl tck1 inner join xx_sshr_req_master rm1 
on rm1.sshr_req_master_id=tck1.req_master_id where person_id=dep.person_id  and rm1.status not in ('RE','WD','SFC','DR') 
and (select trunc(created_date) from xx_sshr_req_approval_details apMst inner join xx_Sshr_req_master rm on rm.sshr_Req_master_id=apMst.sshr_req_master_id 
where rm.sshr_req_master_id=rm1.sshr_req_master_id and action_to is null and action_to_role is null 
order by approval_detail_id desc fetch first row only)<=TO_DATE($P{DEP_DATE},'DD-MM-YYYY')) as usedBal,
(select nvl(sum(adjustment),0) from xx_sshr_tic_bal_adj_mst where person_id=dep.person_id and balance_type=$P{TICKET_TYPE}
and trunc(created_date)<=TO_DATE($P{DEP_DATE},'DD-MM-YYYY')) as adjusted_balance, 	
( case when $P{TICKET_TYPE}= 'Ticketing' THEN round(((XX_GET_ACCUMULATED_BALANCE(dep.employee_id,dep.person_type,
TO_DATE($P{DEP_DATE},'DD-MM-YYYY'),'Ticketing',dep.person_id)
+((select nvl(sum(adjustment),0) from xx_sshr_tic_bal_adj_mst where person_id=dep.person_id and balance_type='Ticketing' and
trunc(created_date)<=TO_DATE($P{DEP_DATE},'DD-MM-YYYY'))))-(select nvl(sum(deducted_balance),0) as depsUsedBalance from xx_sshr_tic_details_tbl tck1
inner join xx_sshr_req_master rm1 on rm1.sshr_req_master_id=tck1.req_master_id where tck1.dependent_id=dep.person_id
and rm1.status not in ('RE','WD','SFC','DR','SU')and REQ_DATE<=TO_DATE($P{DEP_DATE},'DD-MM-YYYY'))-(select nvl(sum(tck.no_of_tckt_encashed),0)
from xx_sshr_ticket_encash_dtl tck inner join xx_sshr_req_master rm on rm.sshr_req_master_id=tck.sshr_Req_master_id
and rm.status not in ('RE','WD','SFC','DR','SU')and REQ_DATE<=TO_DATE($P{DEP_DATE},'DD-MM-YYYY') and tck.person_id=dep.person_id)),3)
else 
round(((XX_GET_ACCUMULATED_BALANCE(dep.employee_id,dep.person_type,TO_DATE($P{DEP_DATE},'DD-MM-YYYY'),'Reentry',dep.person_id)
+((select nvl(sum(adjustment),0) from xx_sshr_tic_bal_adj_mst where person_id=dep.person_id and balance_type='Reentry' 
and trunc(created_date)<=TO_DATE($P{DEP_DATE},'DD-MM-YYYY'))))-(select nvl(sum(deducted_balance),0) as depsUsedBalance from xx_sshr_service_req_dtl tck1 
inner join xx_sshr_req_master rm1 on rm1.sshr_req_master_id=tck1.sshr_req_master_id where tck1.person_id=dep.person_id and UTILIZE_REENTRY_BAL='Y' 
and CHARGE_TO='Company' and (select trunc(created_date) from xx_sshr_req_approval_details apMst inner join xx_Sshr_req_master rm 
on rm.sshr_Req_master_id=apMst.sshr_req_master_id where rm.sshr_req_master_id=rm1.sshr_req_master_id and action_to is null 
and action_to_role is null order by approval_detail_id desc fetch first row only)<=TO_DATE($P{DEP_DATE},'DD-MM-YYYY') 
and rm1.status not in ('RE','WD','SFC','DR','SU'))),3)
end) as actual_balance,dep.eff_start_date,dep.eff_end_date,dependent_id                                      
from xx_sshr_emp_dependent_tbl dep
inner join xx_sshr_emp_master empMst on empMst.person_id=dep.employee_id
where sysdate>=dep.eff_start_date and sysdate<=dep.eff_end_date
and 
1=case when $P{PERSON_ID_VALUE} is not null then (case when $P{PERSON_ID_VALUE}=dep.employee_id then 1 else 0 end) else 1 end
and
1=case when $P{DEPARTMENT_NAME} is not null then (case when $P{DEPARTMENT_NAME}=empMst.department then 1 else 0 end) else 1 end
and
1=case when $P{NATIONALITY} is not null then (case when $P{NATIONALITY}=empMst.nationality then 1 else 0 end) else 1 end
and
1=case when $P{JOB_NAME} is not null then (case when $P{JOB_NAME}=empMst.job_name then 1 else 0 end) else 1 end
and
legal_entity_name in ($P!{LEGAL_ENTITY}) 
and
1=case when $P{GRADE_NAME} is not null then (case when $P{GRADE_NAME}=empMst.grade_name then 1 else 0 end) else 1 end
and
1=case when $P{DEPARTMENT_FAMILY} is not null then (case when $P{DEPARTMENT_FAMILY}=empMst.job_family then 1 else 0 end) else 1 end