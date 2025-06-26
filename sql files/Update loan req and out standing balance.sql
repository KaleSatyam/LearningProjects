select distinct lom.loan_id ,req.ref_id,lom.LOAN_TYPE from XX_SSHR_LOAN_MASTER lom,xx_sshr_req_master req,xx_sshr_loan_from_saas out where   
req.sshr_req_master_id = lom.sshr_req_master_id and req.person_id = :personId and req.status = 'AP'   
and out.person_id=:personId and lom.loan_type in (select SUBSTR(loan_type,5,length(loan_type)-9)   
from xx_sshr_loan_from_saas where person_id=:personId and OUTSTANDING_AMT>0)
and req.sshr_req_master_id in( select to_number(SUBSTR(LOAN_ID,6,length(LOAN_ID)-19)) as saas_loan_id from xx_sshr_loan_from_saas sa inner join xx_sshr_req_master req
 on to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))=req.SSHR_REQ_MASTER_ID
 where sa.person_id=:personId and OUTSTANDING_AMT>0 and SOURCESYSTEMOWNER='PAAS')  order by loan_id ;

select * from xx_sshr_element_entry_dtl order by 1 desc;
select * from xx_sshr_emp_master where person_number='RMT023401';
select * from xx_sshr_loan_from_saas where person_id='100000007448647';

select * from xx_sshr_req_master ;

select SUBSTR(loan_type,5,length(loan_type)-9)   
from xx_sshr_loan_from_saas where person_id=100000007457225 and OUTSTANDING_AMT>0;

 select to_number(SUBSTR(LOAN_ID,6,length(LOAN_ID)-19)) as saas_loan_id from xx_sshr_loan_from_saas sa 
 where sa.person_id=100000007457661 and OUTSTANDING_AMT>0 and SOURCESYSTEMOWNER='PAAS' and 
 to_number(SUBSTR(LOAN_ID,6,length(LOAN_ID)-19))
 in(select SSHR_REQ_MASTER_ID from xx_sshr_req_master);
 
 select to_number(SUBSTR(LOAN_ID,6,length(LOAN_ID)-19)) as saas_loan_id,sa.person_id from xx_sshr_loan_from_saas sa
 inner join xx_sshr_req_master req
 on to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))=req.SSHR_REQ_MASTER_ID
 where OUTSTANDING_AMT>0 and SOURCESYSTEMOWNER='PAAS'and eff_start_date like '%22';
 
 select OUTSTANDING_AMT,sa.person_id from xx_sshr_loan_from_saas sa inner join xx_sshr_req_master req
 on to_number(SUBSTR(sa.LOAN_ID,6,length(sa.LOAN_ID)-19))=req.SSHR_REQ_MASTER_ID where SOURCESYSTEMOWNER='PAAS'  ;

select person_id,count(*) from xx_sshr_loan_from_saas where outstanding_amt>0 and SOURCESYSTEMOWNER='PAAS'  
group by person_id ;
select * from xx_sshr_loan_from_saas where person_id=100000007452536;
select * from xx_sshr_req_master where ref_id like 'LR-%' and person_id=100000007452536  order by 1; 
select * from xx_sshr_loan_master where sshr_req_master_id in (47620,63050);

select * from ei_scheduler_setup where scheduler_id=1;
select * from ei_report_setup_header where scheduler_id=6;
select * from XX_SSHR_BANK_DTL;
select * from ei_report_Data_mapping where REPORT_HEADER_ID=16 order by REPORT_SEQ_NAME asc;
desc XX_SSHR_BANK_DTL;

select TO_CHAR(scheduler_Date,'MM-DD-YYYY') from ei_Scheduler_Date where scheduler_Date_id=17;
select TO_CHAR(sysdate,'MM-DD-YYYY') from ei_Scheduler_Date where scheduler_Date_id=17;


SELECT 
      LISTAGG(bu_name, ',') 
         WITHIN GROUP (ORDER BY bu_name) 
         AS buname
FROM  ( select distinct bu_name from XX_SSHR_BU_MST );

select * from XX_SSHR_EMP_ORG_PAY_METHODS;
select distinct department from xx_sshr_emp_master order by 1 desc;

create or replace TYPE "INV_TABLE" AS TABLE OF VARCHAR2(100 BYTE);

 

create or replace FUNCTION in_custom_list_char (p_in_list IN VARCHAR2)
   RETURN inv_table
AS
   l_tab    inv_table := inv_table ();
   l_text   VARCHAR2 (32767) := p_in_list || ',';
   l_idx   VARCHAR2 (32767);
BEGIN
   LOOP
      l_idx := INSTR (l_text, ',');
      EXIT WHEN NVL (l_idx, 0) = 0;
      l_tab.EXTEND;
      l_tab (l_tab.LAST) := TRIM (SUBSTR (l_text, 1, l_idx - 1));
      l_text := SUBSTR (l_text, l_idx + 1);
   END LOOP;

   RETURN l_tab;
END;



