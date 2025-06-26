select req.ref_id,empMst.person_name,empMst.person_number,empMst.NATIONALITY,empMst.DEPARTMENT,
(select person_name from xx_sshr_emp_master emp where person_id=(select manager_id from xx_sshr_emp_master 
where person_id=req.person_id)) as persondirectmngrName,
lm.loan_type,req.req_date,req.status,lm.loan_amount,lm.NUMBER_OF_INSTALLMENT,lm.INSTALLMENT_AMOUNT,
case when (select to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19)) as saas_loan_id from xx_sshr_loan_from_saas 
sa inner join xx_sshr_req_master reqm on to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))=reqm.sshr_req_master_id where
reqm.sshr_req_master_id=req.sshr_req_master_id and sa.SOURCESYSTEMOWNER='PAAS')=req.sshr_req_master_id 
then
(select  INCREASED_PAID_AMOUNT from xx_sshr_loan_from_saas sa where to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))
=req.SSHR_REQ_MASTER_ID and  lm.sshr_req_master_id=req.sshr_req_master_id and SOURCESYSTEMOWNER='PAAS'
)
else
'0' 
end as INCREASE_PAID_AMOUNT,
case when (select to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19)) as saas_loan_id from xx_sshr_loan_from_saas 
sa inner join xx_sshr_req_master reqm on to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))=reqm.sshr_req_master_id where
reqm.sshr_req_master_id=req.sshr_req_master_id and sa.SOURCESYSTEMOWNER='PAAS')=req.sshr_req_master_id 
then
(select OUTSTANDING_AMT  from xx_sshr_loan_from_saas sa where to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))
=req.SSHR_REQ_MASTER_ID and  lm.sshr_req_master_id=req.sshr_req_master_id and SOURCESYSTEMOWNER='PAAS'
)
else
0 
end  as outstanding_balance,
case when (select to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19)) as saas_loan_id from xx_sshr_loan_from_saas 
sa inner join xx_sshr_req_master reqm on to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))=reqm.sshr_req_master_id where
reqm.sshr_req_master_id=req.sshr_req_master_id and sa.SOURCESYSTEMOWNER='PAAS')=req.sshr_req_master_id 
then
(select to_number(lm.loan_amount-sa.OUTSTANDING_AMT)  from xx_sshr_loan_from_saas sa where to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))
=req.SSHR_REQ_MASTER_ID and  lm.sshr_req_master_id=req.sshr_req_master_id and SOURCESYSTEMOWNER='PAAS'
)
else
0 
end  as amount_deducted,
round(case when (select to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19)) as saas_loan_id from xx_sshr_loan_from_saas 
sa inner join xx_sshr_req_master reqm on to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))=reqm.sshr_req_master_id where
reqm.sshr_req_master_id=req.sshr_req_master_id and sa.SOURCESYSTEMOWNER='PAAS')=req.sshr_req_master_id 
then
(select to_number(to_number(lm.loan_amount-sa.OUTSTANDING_AMT)/lm.INSTALLMENT_AMOUNT)  from xx_sshr_loan_from_saas sa where to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))
=req.SSHR_REQ_MASTER_ID and  lm.sshr_req_master_id=req.sshr_req_master_id and SOURCESYSTEMOWNER='PAAS')
else
0 
end,3)  as installment_deducted,
round(case when (select to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19)) as saas_loan_id from xx_sshr_loan_from_saas 
sa inner join xx_sshr_req_master reqm on to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))=reqm.sshr_req_master_id where
reqm.sshr_req_master_id=req.sshr_req_master_id and sa.SOURCESYSTEMOWNER='PAAS')=req.sshr_req_master_id 
then
(select to_number(lm.NUMBER_OF_INSTALLMENT-to_number(to_number(lm.loan_amount-sa.OUTSTANDING_AMT)/lm.INSTALLMENT_AMOUNT))  from xx_sshr_loan_from_saas sa where to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))
=req.SSHR_REQ_MASTER_ID and  lm.sshr_req_master_id=req.sshr_req_master_id and SOURCESYSTEMOWNER='PAAS')
else
0 
end,3)  as installment_remained,
case when req.status='AP' then 
(select value from xx_sshr_lookup where TYPE='MONTH_LIST' and CODE=lm.DEDUCTION_START_MONTH)
else
null
end as deduction_start_month,
case when req.status='AP' then 
lm.DEDUCTION_START_YEAR
else
null
end as deduction_start_year

from xx_sshr_loan_master lm inner join xx_sshr_req_master req on lm.sshr_req_master_id=req.sshr_req_master_id
inner join xx_sshr_emp_master empMst on empMst.person_id=req.person_id inner join xx_sshr_element_entry_dtl ele on ele.req_master_id=req.sshr_req_master_id
where
ele.load_status not in('NOT_READY','ERROR','null')
and
1=case when :PERSON_ID_VALUE is not null then (case when :PERSON_ID_VALUE=empMst.person_id then 1 else 0 end) else 1 end
and
1=case when :DEPARTMENT_NAME is not null then (case when :DEPARTMENT_NAME=empMst.department then 1 else 0 end) else 1 end
and
1=case when :LOAN_TYPE is not null then (case when :LOAN_TYPE=lm.loan_type then 1 else 0 end) else 1 end
and 
1=case when :REQUEST_STATUS is not null then (case when :REQUEST_STATUS=req.status then 1 else 0 end) else 1 end
and
1=case when :LEGAL_ENTITY is not null then (case when :LEGAL_ENTITY=empMst.legal_entity_name then 1 else 0 end) else 1 end
order by DEPARTMENT,REQ_DATE ASC;



------------------------------------------------------------------
select sysdate from dual;
select * from  xx_sshr_loan_master;
select * from xx_sshr_emp_master where person_number='HOC000597';
100000007449041
100000007450374
select person_name from xx_sshr_emp_master emp where
person_id=(select manager_id from xx_sshr_emp_master where person_id=100000007449041);

select person_name from xx_sshr_emp_master emp where person_id=(select manager_id from xx_sshr_emp_master 
where person_id=100000007450374) ;
1324
select * from xx_sshr_req_master where ref_id like 'LR-%'; 
select * from xx_sshr_loan_from_saas;

---------------------------------------------------------------------------------------------------------------------
select req.ref_id,(select Person_name from xx_sshr_emp_master where person_id=req.person_id) as personname,
(select Person_number from xx_sshr_emp_master where person_id=req.person_id) as personnumber,
(select NATIONALITY from xx_sshr_emp_master where person_id=req.person_id) as personnationality,
(select DEPARTMENT from xx_sshr_emp_master where person_id=req.person_id) as persondepartment,
(select person_name from xx_sshr_emp_master emp where person_id=(select manager_id from xx_sshr_emp_master 
where person_id=req.person_id)) as persondirectmngr,
lm.loan_type,req.req_date,req.status,lm.loan_amount,lm.NUMBER_OF_INSTALLMENT,lm.INSTALLMENT_AMOUNT,lm.INCREASE_PAID_AMOUNT,
(case when (select to_number(SUBSTR(LOAN_ID,6,length(LOAN_ID)-19)) as saas_loan_id from xx_sshr_loan_from_saas sa 
where to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))=req.sshr_req_master_id) then
(select OUTSTANDING_AMT from xx_sshr_loan_from_saas sa where to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))
=req.SSHR_REQ_MASTER_ID and SOURCESYSTEMOWNER='PAAS')
else
0
end)  as outstanding_balance
from xx_sshr_loan_master lm inner join xx_sshr_req_master req on
lm.sshr_req_master_id=req.sshr_req_master_id and req.person_id=100000007455446;
-----------------------------------------------------------------------------------
select req.ref_id,(select Person_name from xx_sshr_emp_master where person_id=req.person_id) as personname,
(select Person_number from xx_sshr_emp_master where person_id=req.person_id) as personnumber,
(select NATIONALITY from xx_sshr_emp_master where person_id=req.person_id) as personnationality,
(select DEPARTMENT from xx_sshr_emp_master where person_id=req.person_id) as persondepartment,
(select person_name from xx_sshr_emp_master emp where person_id=(select manager_id from xx_sshr_emp_master 
where person_id=req.person_id)) as persondirectmngr,
lm.loan_type,req.req_date,req.status,lm.loan_amount,lm.NUMBER_OF_INSTALLMENT,lm.INSTALLMENT_AMOUNT,lm.INCREASE_PAID_AMOUNT,
(case when (select to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19)) as saas_loan_id from xx_sshr_loan_from_saas sa inner join xx_sshr_req_master reqm on
to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))=reqm.sshr_req_master_id where
reqm.sshr_req_master_id=req.sshr_req_master_id and sa.SOURCESYSTEMOWNER='PAAS')=req.sshr_req_master_id 
then
(select OUTSTANDING_AMT from xx_sshr_loan_from_saas sa where to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))
=req.SSHR_REQ_MASTER_ID and SOURCESYSTEMOWNER='PAAS')
else
0
end)  as outstanding_balance
from xx_sshr_loan_master lm inner join xx_sshr_req_master req on lm.sshr_req_master_id=req.sshr_req_master_id
inner join xx_sshr_emp_master empMst on empMst.person_id=req.person_id;

------------------------------------------------------------------------------
select to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19)) as saas_loan_id from xx_sshr_loan_from_saas sa ,xx_sshr_req_master req 
where to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))=50097  and sa.SOURCESYSTEMOWNER='PAAS'  ;

select to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19)) as saas_loan_id from xx_sshr_loan_from_saas sa inner join xx_sshr_req_master reqm on
to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))=reqm.sshr_req_master_id where reqm.sshr_req_master_id=50097 and sa.SOURCESYSTEMOWNER='PAAS'  ;

select * from xx_sshr_loan_from_saas ;
---------------------------------------------------
select req.ref_id,empMst.person_name,empMst.person_number,empMst.NATIONALITY,empMst.DEPARTMENT,
(select person_name from xx_sshr_emp_master emp where person_id=(select manager_id from xx_sshr_emp_master 
where person_id=req.person_id)) as persondirectmngrName,
lm.loan_type, TO_DATE(req.req_date,'DD-MM-YYYY') as req_date,req.status,lm.loan_amount,lm.NUMBER_OF_INSTALLMENT,lm.INSTALLMENT_AMOUNT,
case when (select to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19)) as saas_loan_id from xx_sshr_loan_from_saas 
sa inner join xx_sshr_req_master reqm on to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))=reqm.sshr_req_master_id where
reqm.sshr_req_master_id=req.sshr_req_master_id and sa.SOURCESYSTEMOWNER='PAAS')=req.sshr_req_master_id 
then
(select OUTSTANDING_AMT  from xx_sshr_loan_from_saas sa where to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))
=req.SSHR_REQ_MASTER_ID and  lm.sshr_req_master_id=req.sshr_req_master_id and SOURCESYSTEMOWNER='PAAS'
)
else
0 
end  as outstanding_balance,
case when (select to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19)) as saas_loan_id from xx_sshr_loan_from_saas 
sa inner join xx_sshr_req_master reqm on to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))=reqm.sshr_req_master_id where
reqm.sshr_req_master_id=req.sshr_req_master_id and sa.SOURCESYSTEMOWNER='PAAS')=req.sshr_req_master_id 
then
(select to_number(lm.loan_amount-sa.OUTSTANDING_AMT)  from xx_sshr_loan_from_saas sa where to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))
=req.SSHR_REQ_MASTER_ID and  lm.sshr_req_master_id=req.sshr_req_master_id and SOURCESYSTEMOWNER='PAAS'
)
else
0 
end  as amount_deducted,
round(case when (select to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19)) as saas_loan_id from xx_sshr_loan_from_saas 
sa inner join xx_sshr_req_master reqm on to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))=reqm.sshr_req_master_id where
reqm.sshr_req_master_id=req.sshr_req_master_id and sa.SOURCESYSTEMOWNER='PAAS')=req.sshr_req_master_id 
then
(select to_number(to_number(lm.loan_amount-sa.OUTSTANDING_AMT)/lm.INSTALLMENT_AMOUNT)  from xx_sshr_loan_from_saas sa where to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))
=req.SSHR_REQ_MASTER_ID and  lm.sshr_req_master_id=req.sshr_req_master_id and SOURCESYSTEMOWNER='PAAS'
)
else
0 
end)  as installment_deducted,
round(case when (select to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19)) as saas_loan_id from xx_sshr_loan_from_saas 
sa inner join xx_sshr_req_master reqm on to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))=reqm.sshr_req_master_id where
reqm.sshr_req_master_id=req.sshr_req_master_id and sa.SOURCESYSTEMOWNER='PAAS')=req.sshr_req_master_id 
then
(select to_number(lm.NUMBER_OF_INSTALLMENT-to_number(to_number(lm.loan_amount-sa.OUTSTANDING_AMT)/lm.INSTALLMENT_AMOUNT))  from xx_sshr_loan_from_saas sa where to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))
=req.SSHR_REQ_MASTER_ID and  lm.sshr_req_master_id=req.sshr_req_master_id and SOURCESYSTEMOWNER='PAAS'
)
else
0 
end)  as installment_remained
from xx_sshr_loan_master lm inner join xx_sshr_req_master req on lm.sshr_req_master_id=req.sshr_req_master_id
inner join xx_sshr_emp_master empMst on empMst.person_id=req.person_id where
1=case when :PERSON_ID_VALUE is not null then (case when :PERSON_ID_VALUE=empMst.person_id then 1 else 0 end) else 1 end
and
1=case when :DEPARTMENT_NAME is not null then (case when :DEPARTMENT_NAME=empMst.department then 1 else 0 end) else 1 end
and
1=case when :LOAN_TYPE is not null then (case when :LOAN_TYPE=lm.loan_type then 1 else 0 end) else 1 end
and 
1=case when :REQUEST_STATUS is not null then (case when :REQUEST_STATUS=req.status then 1 else 0 end) else 1 end
and
1=case when :LEGAL_ENTITY is not null then (case when :LEGAL_ENTITY=empMst.legal_entity_name then 1 else 0 end) else 1 end
order by 5,8 ASC;
---------------------------------------------------------------------------------------------------
select * from xx_sshr_loan_from_saas sa inner join xx_sshr_req_master req on  to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))
=req.SSHR_REQ_MASTER_ID inner join xx_sshr_loan_master lon on lon.sshr_req_master_id=req.SSHR_REQ_MASTER_ID
and SOURCESYSTEMOWNER='PAAS';