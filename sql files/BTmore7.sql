select queryResult from (select 1 as colval,'METADATA|PersonAbsenceEntry|PersonNumber|Employer|AbsenceType|StartDate|EndDate|Duration|AbsenceStatus|ApprovalStatus|SourceSystemId|SourceSystemOwner|StartDateDuration|EndDateDuration|FLEX:ANC_PER_ABS_ENTRIES_DFF|dutyJoiningRequired(ANC_PER_ABS_ENTRIES_DFF=Global Data Elements)' as queryResult from dual
union
select 2 as colval,queryResult from(select 2 as colVal,'MERGE|PersonAbsenceEntry|'||emp.person_number||'|'
||emp.legal_entity_name||'|Business Trip|'||(select TO_CHAR(min(from_date),'YYYY/MM/DD') from xx_sshr_bt_leave_mst 
where bt_parent_id=btParent.BT_PARENT_ID)||'|'||(select TO_CHAR(max(to_date),'YYYY/MM/DD') from xx_sshr_bt_leave_mst
where bt_parent_id=btParent.BT_PARENT_ID)||'|'||(select max(to_Date)-min(from_Date) from xx_sshr_bt_leave_mst where 
bt_parent_id=btParent.BT_PARENT_ID)||'|SUBMITTED|APPROVED|'||rm.sshr_req_master_id||'_BusinessTrip|PAAS|1|1'
||'|Global Data Elements|'||(select (case when sum(btl.to_date-btl.from_date)>7 then 'Y' else 'N' end) from XX_SSHR_BT_LEAVE_MST btl where btl.BT_PARENT_ID=btParent.BT_PARENT_ID) as queryResult 
from xx_sshr_req_master rm inner join xx_Sshr_emp_master emp on emp.person_id=rm.person_id 
inner join xx_sshr_bt_parent_mst btParent on btParent.SSHR_REQ_MASTER_ID=rm.SSHR_REQ_MASTER_ID
inner join XX_SSHR_BT_LEAVE_MST trip on trip.BT_PARENT_ID=btParent.BT_PARENT_ID
where rm.sshr_req_master_id=:reqMasterId) where rownum=1)  order by colval

select * from xx_sshr_bt_parent_mst where sshr_req_master_id=20843;
select * from XX_SSHR_BT_LEAVE_MST where bt_parent_id=3172;
update XX_SSHR_BT_LEAVE_MST set to_date='31-aug-22' where bt_leave_id=3052;
select (case when sum(btl.to_date-btl.from_date)>7 then 'Y' else 'N' end) from XX_SSHR_BT_LEAVE_MST btl where btl.bt_parent_id=3172;

select sum(btl.to_date-btl.from_date) as sum ,btl.from_date,btl.to_date from XX_SSHR_BT_LEAVE_MST btl where btl.bt_parent_id=3172 group by btl.from_date ,btl.to_date;
100000007446032
100000007445064 ---SFI007393
select * from xx_sshr_emp_master where person_number='PWD005354';BMD016448 

select * from xx_sshr_tckt_encash_leave_dtl order by 1 desc;
select * from xx_sshr_approval_master where bu_name='BAYT ALTAWAZUN HOLDING CO.';
select * from xx_sshr_certificate_mstr order by 1 desc;
select * from xx_sshr_role_users_master where emp_id=100000007448476;



