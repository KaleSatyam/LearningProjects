
-------------------------
select dep.person_id,'' as DependentAcc,                                                  
'' as EmpAcc,                                                  
'' as depUsedBal,                                                  
'' as employeeUsedBal,                                                  
'' as adjusted_balanceEmp,                                                  
'' as adjusted_balanceDep,                                                  
'' as actualBalanceEmp,                                                  
'' as actualBalanceDependent,'' as person_name,dep.person_type,dep.dependent_name,round(XX_GET_ACCUMULATED_BALANCE(dep.employee_id,dep.person_type,TO_DATE(:balanceDate,'DD-MM-YYYY'),'Ticketing',dep.person_id),3) as accumulated_balance,           
round((select nvl(sum(deducted_balance),0) as depsUsedBalance from xx_sshr_tic_details_tbl tck1          
inner join xx_sshr_req_master rm1 on rm1.sshr_req_master_id=tck1.req_master_id where tck1.dependent_id=dep.person_id           
and rm1.status not in ('RE','WD','SFC','DR','SU')and REQ_DATE<=TO_DATE(:balanceDate,'DD-MM-YYYY'))+(select nvl(sum(tck.no_of_tckt_encashed),0)          
from xx_sshr_ticket_encash_dtl tck inner join xx_sshr_req_master rm on rm.sshr_req_master_id=tck.sshr_Req_master_id          
and rm.status not in ('RE','WD','SFC','DR','SU')and REQ_DATE<=TO_DATE(:balanceDate,'DD-MM-YYYY') and tck.person_id=dep.person_id),3) as used_balance,             
round((select nvl(sum(adjustment),0) from xx_sshr_tic_bal_adj_mst where person_id=dep.person_id and balance_type='Ticketing' and trunc(created_date)<=TO_DATE(:balanceDate,'DD-MM-YYYY')),3) as adjusted_balance,                              
round(((XX_GET_ACCUMULATED_BALANCE(dep.employee_id,dep.person_type,TO_DATE(:balanceDate,'DD-MM-YYYY'),'Ticketing',dep.person_id)+((select nvl(sum(adjustment),0) from xx_sshr_tic_bal_adj_mst where person_id=dep.person_id and balance_type='Ticketing' and trunc(created_date)<=TO_DATE(:balanceDate,'DD-MM-YYYY'))))-         
(select nvl(sum(deducted_balance),0) as depsUsedBalance from xx_sshr_tic_details_tbl tck1          
inner join xx_sshr_req_master rm1 on rm1.sshr_req_master_id=tck1.req_master_id where tck1.dependent_id=dep.person_id           
and rm1.status not in ('RE','WD','SFC','DR','SU')and REQ_DATE<=TO_DATE(:balanceDate,'DD-MM-YYYY'))-(select nvl(sum(tck.no_of_tckt_encashed),0)          
from xx_sshr_ticket_encash_dtl tck inner join xx_sshr_req_master rm on rm.sshr_req_master_id=tck.sshr_Req_master_id          
and rm.status not in ('RE','WD','SFC','DR','SU')and REQ_DATE<=TO_DATE(:balanceDate,'DD-MM-YYYY') and tck.person_id=dep.person_id)),3) as actual_balance,eff_start_date,eff_end_date,employee_id,dependent_id                                                  
from xx_sshr_emp_dependent_tbl dep where to_date(:balanceDate,'DD-MM-YYYY')>=eff_start_Date          
and to_date(:balanceDate,'DD-MM-YYYY')<=eff_end_date and dep.employee_id=100000007455911;
---------------------------------------------------------------------------------------------------------------------

select empMst.department,dep.person_number,dep.person_id,
dep.dependent_name,
dep.person_type,dep.employee_id,empMst.legal_entity_name,tar.TICKET_SECTOR,
tar.TICKET_ELIGIBLE,tar.NUM_OF_MONTHS ,
tar.TICKET_PCT,tar.ENTITLEMENT_BASE,tar.ENTITLEMENT,tar.GROSS_AMOUNT,
round(XX_GET_ACCUMULATED_BALANCE(dep.employee_id,dep.person_type,TO_DATE(:DEP_DATE,'DD-MM-YYYY'),
'Ticketing',dep.person_id),3) as accumulatedBalance,
round((XX_GET_ACCUMULATED_BALANCE(dep.employee_id,dep.person_type,TO_DATE(:DEP_DATE,'DD-MM-YYYY'),
'Ticketing',dep.person_id)*tar.TICKET_SECTOR),3) as accumulatedBalanceAmount,
Round(tar.ENTITLEMENT/12,3) as currentmonthincrease,
((Round(tar.ENTITLEMENT/12,3))*tar.TICKET_SECTOR) as currentmonthincreaseamount,
round((select nvl(sum(deducted_balance),0) as depsUsedBalance from xx_sshr_tic_details_tbl tck1
inner join xx_sshr_req_master rm1 on rm1.sshr_req_master_id=tck1.req_master_id where tck1.dependent_id=dep.person_id
and rm1.status not in ('RE','WD','SFC','DR','SU')and REQ_DATE<=TO_DATE(:DEP_DATE,'DD-MM-YYYY'))
+(select nvl(sum(tck.no_of_tckt_encashed),0)  from xx_sshr_ticket_encash_dtl tck inner join xx_sshr_req_master rm
on rm.sshr_req_master_id=tck.sshr_Req_master_id and rm.status not in ('RE','WD','SFC','DR','SU')
and REQ_DATE<=TO_DATE(:DEP_DATE,'DD-MM-YYYY') and tck.person_id=dep.person_id),3) as usedBal,
((round((select nvl(sum(deducted_balance),0) as depsUsedBalance from xx_sshr_tic_details_tbl tck1
inner join xx_sshr_req_master rm1 on rm1.sshr_req_master_id=tck1.req_master_id where tck1.dependent_id=dep.person_id
and rm1.status not in ('RE','WD','SFC','DR')and REQ_DATE<=TO_DATE(:DEP_DATE,'DD-MM-YYYY'))
+(select nvl(sum(tck.no_of_tckt_encashed),0)  from xx_sshr_ticket_encash_dtl tck inner join xx_sshr_req_master rm
on rm.sshr_req_master_id=tck.sshr_Req_master_id and rm.status not in ('RE','WD','SFC','DR')
and REQ_DATE<=TO_DATE(:DEP_DATE,'DD-MM-YYYY') and tck.person_id=dep.person_id),3))*tar.TICKET_SECTOR) as usedBalAmount,    
(select nvl(sum(adjustment),0) from xx_sshr_tic_bal_adj_mst where person_id=dep.person_id and balance_type='Ticketing' 
and trunc(created_date)<=TO_DATE(:DEP_DATE,'DD-MM-YYYY')) as adjusted_balance,  
((select nvl(sum(adjustment),0) from xx_sshr_tic_bal_adj_mst where person_id=dep.person_id and balance_type='Ticketing' 
and trunc(created_date)<=TO_DATE(:DEP_DATE,'DD-MM-YYYY'))*tar.TICKET_SECTOR) as adjusted_balanceAmount,  
round(((XX_GET_ACCUMULATED_BALANCE(dep.employee_id,dep.person_type,TO_DATE(:DEP_DATE,'DD-MM-YYYY'),'Ticketing',dep.person_id)+((
select nvl(sum(adjustment),0) from xx_sshr_tic_bal_adj_mst where person_id=dep.person_id and balance_type='Ticketing' and trunc(
created_date)<=TO_DATE(:DEP_DATE,'DD-MM-YYYY'))))-(select nvl(sum(deducted_balance),0) as depsUsedBalance from 
xx_sshr_tic_details_tbl tck1 inner join xx_sshr_req_master rm1 on rm1.sshr_req_master_id=tck1.req_master_id where tck1.dependent_id=
dep.person_id and rm1.status not in ('RE','WD','SFC','DR','SU')and REQ_DATE<=TO_DATE(:DEP_DATE,'DD-MM-YYYY'))-(select nvl(sum(tck
.no_of_tckt_encashed),0)from xx_sshr_ticket_encash_dtl tck inner join xx_sshr_req_master rm on rm.sshr_req_master_id=tck.
sshr_Req_master_id and rm.status not in ('RE','WD','SFC','DR','SU')and REQ_DATE<=TO_DATE(:DEP_DATE,'DD-MM-YYYY') and tck.
person_id=dep.person_id)),3) as actualBalance,
 (round(((XX_GET_ACCUMULATED_BALANCE(dep.employee_id,dep.person_type,TO_DATE(:DEP_DATE,'DD-MM-YYYY'),'Ticketing',dep.person_id)+((
select nvl(sum(adjustment),0) from xx_sshr_tic_bal_adj_mst where person_id=dep.person_id and balance_type='Ticketing' and trunc(
created_date)<=TO_DATE(:DEP_DATE,'DD-MM-YYYY'))))-(select nvl(sum(deducted_balance),0) as depsUsedBalance from 
xx_sshr_tic_details_tbl tck1 inner join xx_sshr_req_master rm1 on rm1.sshr_req_master_id=tck1.req_master_id where tck1.dependent_id=
dep.person_id and rm1.status not in ('RE','WD','SFC','DR','SU')and REQ_DATE<=TO_DATE(:DEP_DATE,'DD-MM-YYYY'))-(select nvl(sum(tck
.no_of_tckt_encashed),0)from xx_sshr_ticket_encash_dtl tck inner join xx_sshr_req_master rm on rm.sshr_req_master_id=tck.
sshr_Req_master_id and rm.status not in ('RE','WD','SFC','DR','SU')and REQ_DATE<=TO_DATE(:DEP_DATE,'DD-MM-YYYY') and tck.
person_id=dep.person_id)),3)*tar.TICKET_SECTOR) as actualBalanceAmount,
dep.eff_start_date,dep.eff_end_date,dependent_id                                      
from xx_sshr_emp_dependent_tbl dep
inner join xx_sshr_emp_master empMst on empMst.person_id=dep.employee_id
inner join XX_SSHR_TICKET_ACCURAL_REPORT_DATA tar on
tar.DEP_ID=dep.person_id
where sysdate>=dep.eff_start_date and sysdate<=dep.eff_end_date and tar.TICKET_ELIGIBLE='YES'
and 
1=case when :PERSON_ID_VALUE is not null then (case when :PERSON_ID_VALUE=dep.employee_id then 1 else 0 end) else 1 end
--and
--department in (:DEPARTMENT_NAME)
and
1=case when :NATIONALITY is not null then (case when :NATIONALITY=empMst.nationality then 1 else 0 end) else 1 end
and
1=case when :JOB_NAME is not null then (case when :JOB_NAME=empMst.job_name then 1 else 0 end) else 1 end
and
legal_entity_name in (:LEGAL_ENTITY) 
and
1=case when :GRADE_NAME is not null then (case when :GRADE_NAME=empMst.grade_name then 1 else 0 end) else 1 end
and
1=case when :DEPARTMENT_FAMILY is not null then (case when :DEPARTMENT_FAMILY=empMst.job_family then 1 else 0 end) else 1 end;

------------------------------------------------------
select * from XX_SSHR_TICKET_ACCURAL_REPORT_DATA;