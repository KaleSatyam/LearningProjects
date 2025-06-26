select distinct lom.loan_id ,req.ref_id from XX_SSHR_LOAN_MASTER lom,xx_sshr_req_master req,xx_sshr_loan_from_saas out where 
req.sshr_req_master_id = lom.sshr_req_master_id and req.person_id = :personId and req.status = 'AP' 
and out.person_id=:personId and lom.loan_type in (select SUBSTR(loan_type,5,length(loan_type)-9) 
from xx_sshr_loan_from_saas where person_id=:personId and OUTSTANDING_AMT>0) order by loan_id;


SELECT LISTAGG(SUBSTR(loan_type,5,length(loan_type)-9), ', ')  from xx_sshr_loan_from_saas where person_id=:personId;

ADM001482
100000007445068
select * from xx_sshr_tckt_encash_leave_dtl where person_id=100000007450842;
select * from xx_sshr_lop_test_tbl;
select SUBSTR(loan_type,5,length(loan_type)-9)as loantype from xx_sshr_loan_from_saas where person_id=:personId and OUTSTANDING_AMT>0;
select * from xx_sshr_req_master where ref_id like '%LR%' and person_id=100000007445786;
select * from xx_sshr_loan_master ;
select * from xx_sshr_loan_from_saas;
select ref_id from xx_sshr_req_master where ref_id like '%LR%' and status='AP' and person_id=100000007445786;
select person_id,count(person_id) from xx_sshr_loan_from_saas  GROUP BY person_id having count(person_id)>1 ;
select * from xx_sshr_loan_from_saas where person_id=100000007445786;
select * from xx_sshr_emp_master where person_number='ADM001482';
select * from xx_sshr_emp_master where person_id='100000007456525';

----------------------------------------------------

SELECT                                  
 xx_sshr_tckt_encash_leave_dtl.leave_id,                    
 xx_sshr_tckt_encash_leave_dtl.leave_name,                 
 xx_sshr_tckt_encash_leave_dtl.person_id,                 
 xx_sshr_tckt_encash_leave_dtl.start_date,                 
 xx_sshr_tckt_encash_leave_dtl.end_date,                
 xx_sshr_tckt_encash_leave_dtl.reentry_type,           
 xx_sshr_tckt_encash_leave_dtl.absence_type,        
 xx_sshr_tckt_encash_leave_dtl.reentry_request        
FROM                                  
   xx_sshr_tckt_encash_leave_dtl                          
WHERE                                  
   leave_id NOT IN (                                  
       SELECT                                  
           prent.leave_id                                  
       FROM                                  
           xx_sshr_personal_reentry prent                                  
           INNER JOIN xx_sshr_tckt_encash_leave_dtl eld ON eld.leave_id = prent.leave_id                                  
           INNER JOIN xx_sshr_req_master req ON req.sshr_req_master_id = prent.sshr_req_master_id                                  
                                                AND   req.status not IN ('RE','WD','SFC')                          
   )                                 
   AND (start_date >= sysdate and start_date-sysdate<30) and  xx_sshr_tckt_encash_leave_dtl.person_id 
   =:personIdVal and (xx_sshr_tckt_encash_leave_dtl.ticket_request='Encashment' or 
   xx_sshr_tckt_encash_leave_dtl.ticket_request='Booking and Encashment');
   ------------------------------------------------------------------------------
   select LEAVE_ID,                      
PERSON_ID,                      
ABSENCE_TYPE,                      
START_DATE,                      
END_DATE,                      
DUR,                      
VACATION_ADVANCE,                      
TICKET_REQUEST,                      
REENTRY_REQUEST,                      
LEAVE_NAME,                      
REENTRY_TYPE,                      
LEAVE_DIFFERENCE_DAYS, UNIQUE_KEY               
from (                      
    select LEAVE_ID,                      
PERSON_ID,                      
ABSENCE_TYPE,                      
START_DATE,                      
END_DATE,                      
DUR,                      
VACATION_ADVANCE,                      
TICKET_REQUEST,                      
REENTRY_REQUEST,                      
LEAVE_NAME,                      
REENTRY_TYPE,                      
LEAVE_DIFFERENCE_DAYS,UNIQUE_KEY from xx_sshr_TCKT_ENCASH_LEAVE_DTL where leave_id NOT IN (                                                 
        SELECT                                                 
            prent.leave_id                                                 
        FROM                                                 
            xx_sshr_duty_joining_master prent                                                 
            INNER JOIN xx_sshr_req_master req ON req.sshr_req_master_id = prent.sshr_req_master_id                                                 
                                                 AND   req.status not IN ('RE','WD','SFC') and prent.type_of_duty_joining != 'Modify'                                        
    ) and              
     absence_type not in ('Loss Of Pay')      
     and LEAVE_DIFFERENCE_DAYS>=       
        (select lop_days from xx_sshr_legal_entity_lop_days where bu_name =       
            (select legal_entity_name from xx_sshr_emp_master where person_id = :personIdVal      
            )      
        )      
     and (duty_joining_required not in ('No','N') or duty_joining_required is null)    
     and person_id= :personIdVal       
     and :action = 'Submit' order by start_date)                       
union all                      
select LEAVE_ID,                      
PERSON_ID,                      
ABSENCE_TYPE,                      
START_DATE,                      
END_DATE,                      
DUR,                      
VACATION_ADVANCE,                      
TICKET_REQUEST,                      
REENTRY_REQUEST,                      
LEAVE_NAME,                      
REENTRY_TYPE,                      
LEAVE_DIFFERENCE_DAYS,             
UNIQUE_KEY             
    from (select                      
    LEAVE_ID,                      
PERSON_ID,                      
ABSENCE_TYPE,                      
START_DATE,                      
END_DATE,                      
DUR,                      
VACATION_ADVANCE,                      
TICKET_REQUEST,                      
REENTRY_REQUEST,                      
LEAVE_NAME,                      
REENTRY_TYPE,                      
LEAVE_DIFFERENCE_DAYS,             
UNIQUE_KEY             
  from                      
    xx_sshr_tckt_encash_leave_dtl leave  where leave_id NOT IN (                                                 
        SELECT                                                 
            prent.leave_id                                                 
        FROM                                                 
            xx_sshr_duty_joining_master prent                                                                           
            INNER JOIN xx_sshr_req_master req ON req.sshr_req_master_id = prent.sshr_req_master_id                                                 
                                                 AND   req.status not IN ('RE','WD','SFC')               
    )              
    and              
    absence_type not in ('Loss Of Pay')      
    and (duty_joining_required not in ('No','N') or duty_joining_required is null)       
    and person_id = :personIdVal and :action not in ('Submit')       
    and (start_date > add_months(SYSDATE, -1) or end_date > add_months(SYSDATE, -1))order by start_date);
    ------------------------------------------------------------------------------------------
    "100000007453002"
    "300000033199368"
  -------------------------------------------------------------------------------------------  
  SELECT leave_id,
       person_id,
       absence_type,
       start_date,
       end_date,
       dur,
       vacation_advance,
       ticket_request,
       reentry_request,
       leave_name,
       reentry_type,
       leave_difference_days,
       diff,
       unique_key
FROM   (SELECT leave_id,
               person_id,
               absence_type,
               start_date,
               end_date,
               dur,
               vacation_advance,
               ticket_request,
               reentry_request,
               leave_name,
               reentry_type,
               leave_difference_days,
               diff,
               unique_key
        FROM   (SELECT leave_id,
                       person_id,
                       absence_type,
                       start_date,
                       end_date,
                       dur,
                       vacation_advance,
                       ticket_request,
                       reentry_request,
                       leave_name,
                       reentry_type,
                       leave_difference_days,
                       (SELECT To_date(end_date) - To_date(start_date - 1)
                        FROM   xx_sshr_tckt_encash_leave_dtl a
                        WHERE  a.leave_id = b.leave_id) AS diff,
                       unique_key
                FROM   xx_sshr_tckt_encash_leave_dtl b
                WHERE  b.person_id = :personIdVal
                       AND absence_type NOT IN ( 'Loss Of Pay' )
                       AND b.start_date =
                           (SELECT b.end_date
                            FROM   xx_sshr_tckt_encash_leave_dtl
                                   b
                            WHERE  b.person_id = :personIdVal
                                   AND absence_type NOT IN (
                                       'Loss Of Pay' )
                                   AND b.end_date =
                                       (SELECT b.start_date
                                        FROM
                                       xx_sshr_tckt_encash_leave_dtl b
                                                     WHERE
                                       b.leave_id = :leaveIdVal
                                       AND b.person_id =
                                           :personIdVal
                                       AND absence_type NOT IN (
                                           'Loss Of Pay' )) - 1)
                           - 1
                UNION
                
--                SELECT leave_id,
--                       person_id,
--                       absence_type,
--                       start_date,
--                       end_date,
--                       dur,
--                       vacation_advance,
--                       ticket_request,
--                       reentry_request,
--                       leave_name,
--                       reentry_type,
--                       leave_difference_days,
--                       (SELECT To_date(a.end_date) - To_date(a.start_date - 1)
--                        FROM   xx_sshr_tckt_encash_leave_dtl a
--                        WHERE  a.leave_id = b.leave_id) AS diff,
--                       unique_key
--                FROM   xx_sshr_tckt_encash_leave_dtl b
--                WHERE  b.person_id = :personIdVal
--                       AND absence_type NOT IN ( 'Loss Of Pay' )
--                       AND b.end_date = (SELECT b.start_date
--                                         FROM   xx_sshr_tckt_encash_leave_dtl b
--                                         WHERE  b.leave_id = :leaveIdVal
--                                                AND b.person_id = :personIdVal
--                                                AND absence_type NOT IN
--                                                    ( 'Loss Of Pay' )) - 1
                                                    
               -- UNION
                
                SELECT leave_id,
                       person_id,
                       absence_type,
                       start_date,
                       end_date,
                       dur,
                       vacation_advance,
                       ticket_request,
                       reentry_request,
                       leave_name,
                       reentry_type,
                       leave_difference_days,
                       (SELECT To_date(end_date) - To_date(start_date - 1)
                        FROM   xx_sshr_tckt_encash_leave_dtl a
                        WHERE  a.leave_id = b.leave_id) AS diff,
                       unique_key
                FROM   xx_sshr_tckt_encash_leave_dtl b
                WHERE  b.leave_id = :leaveIdVal
                       AND b.person_id = :personIdVal
                       AND absence_type NOT IN ( 'Loss Of Pay' )
                UNION
                SELECT leave_id,
                       person_id,
                       absence_type,
                       start_date,
                       end_date,
                       dur,
                       vacation_advance,
                       ticket_request,
                       reentry_request,
                       leave_name,
                       reentry_type,
                       leave_difference_days,
                       (SELECT To_date(end_date) - To_date(start_date - 1)
                        FROM   xx_sshr_tckt_encash_leave_dtl a
                        WHERE  a.leave_id = b.leave_id) AS diff,
                       unique_key
                FROM   xx_sshr_tckt_encash_leave_dtl b
                WHERE  b.person_id = :personIdVal
                       AND absence_type NOT IN ( 'Loss Of Pay' )
                       AND b.start_date = (SELECT b.end_date
                                           FROM   xx_sshr_tckt_encash_leave_dtl
                                                  b
                                           WHERE  b.leave_id = :leaveIdVal
                                                  AND b.person_id = :personIdVal
                                                  AND absence_type NOT IN (
                                                      'Loss Of Pay' ))
                                          + 1
                UNION
                SELECT leave_id,
                       person_id,
                       absence_type,
                       start_date,
                       end_date,
                       dur,
                       vacation_advance,
                       ticket_request,
                       reentry_request,
                       leave_name,
                       reentry_type,
                       leave_difference_days,
                       (SELECT To_date(end_date) - To_date(start_date - 1)
                        FROM   xx_sshr_tckt_encash_leave_dtl a
                        WHERE  a.leave_id = b.leave_id) AS diff,
                       unique_key
                FROM   xx_sshr_tckt_encash_leave_dtl b
                WHERE  b.person_id = :personIdVal
                       AND absence_type NOT IN ( 'Loss Of Pay' )
                       AND b.start_date =
                           (SELECT b.end_date
                            FROM   xx_sshr_tckt_encash_leave_dtl
                                   b
                            WHERE  b.person_id = :personIdVal
                                   AND absence_type NOT IN (
                                       'Loss Of Pay' )
                                   AND b.start_date =
                                       (SELECT b.end_date
                                        FROM
                                       xx_sshr_tckt_encash_leave_dtl
                                       b
                                                       WHERE
                                       b.leave_id = :leaveIdVal
                                       AND b.person_id =
                                           :personIdVal
                                       AND absence_type NOT IN (
                                           'Loss Of Pay' ))
                                                      + 1)
                           + 1)
        ORDER  BY start_date)
WHERE  absence_type NOT IN ( 'Loss Of Pay' )
       AND rownum < 4 ;
    -------------------------------------------------------------------------------------------------------------------------
---    old duty joining query -------------------------------------------

Select queryResult from (select 1 as colval,
'METADATA|PersonAbsenceEntry|Employer|PersonNumber|AbsenceType|StartDate|StartTime|FLEX:ANC_PER_ABS_ENTRIES_DFF|
dutyJoiningRequired(ANC_PER_ABS_ENTRIES_DFF=Global Data Elements)|dutyJoiningSubmitted(ANC_PER_ABS_ENTRIES_DFF=
Global Data Elements)' as queryResult from dual union select 2 as colVal,'MERGE|PersonAbsenceEntry|'||
(select legal_entity_name from xx_sshr_emp_master where person_id = emp.PERSON_ID)||'|'
||(select person_number from xx_sshr_emp_master where person_id = emp.PERSON_ID)||'|'||
(select DJmst.LEAVE_NAME from Xx_Sshr_Duty_Joining_Master DJmst where DJmst.SSHR_REQ_MASTER_ID= reqmst.SSHR_REQ_MASTER_ID)||'|'||
(select TO_CHAR(START_DATE,'YYYY/MM/DD') from Xx_Sshr_Duty_Joining_Master DJmst order by LEAVE_ID desc fetch first row only)||'|00:00|Global Data Elements|Y|Y' 
end from xx_sshr_req_master reqmst inner join Xx_Sshr_Duty_Joining_Master DJmst on DJmst.SSHR_REQ_MASTER_ID= reqmst.SSHR_REQ_MASTER_ID 
inner join xx_sshr_emp_master emp on emp.person_id=reqmst.person_id 
inner join Xx_Sshr_Tckt_Encash_Leave_Dtl leavedtl on DJmst.leave_id=leavedtl.leave_id
where reqmst.sshr_req_master_id=:reqMasterId and leavedtl.ABSENCE_TYPE=DJmst.LEAVE_NAME) order by colval;

--- new duty joining query  ------------------------------------------------
    Select queryResult from (select 1 as colval,
'METADATA|PersonAbsenceEntry|Employer|PersonNumber|AbsenceType|StartDate|StartTime|FLEX:ANC_PER_ABS_ENTRIES_DFF|
dutyJoiningRequired(ANC_PER_ABS_ENTRIES_DFF=Global Data Elements)|dutyJoiningSubmitted(ANC_PER_ABS_ENTRIES_DFF=Global Data Elements)'
as queryResult from dual
union select 2 as colVal,'MERGE|PersonAbsenceEntry|'||(select legal_entity_name from xx_sshr_emp_master where 
person_id = emp.PERSON_ID)||'|'||(select person_number from xx_sshr_emp_master where person_id = emp.PERSON_ID)||'|'||
(select DJmst.LEAVE_NAME from Xx_Sshr_Duty_Joining_Master DJmst where DJmst.SSHR_REQ_MASTER_ID= reqmst.SSHR_REQ_MASTER_ID)||'|'||
(select TO_CHAR(START_DATE,'YYYY/MM/DD') from Xx_Sshr_Duty_Joining_Master DJmst order by LEAVE_ID desc fetch first row only)
||'|00:00|Global Data Elements|Y|Y'
end from xx_sshr_req_master reqmst inner join Xx_Sshr_Duty_Joining_Master DJmst on
DJmst.SSHR_REQ_MASTER_ID= reqmst.SSHR_REQ_MASTER_ID
inner join xx_sshr_emp_master emp on emp.person_id=reqmst.person_id
inner join Xx_Sshr_Tckt_Encash_Leave_Dtl leavedtl on DJmst.leave_id=leavedtl.leave_id
where reqmst.sshr_req_master_id=:reqMasterId and leavedtl.ABSENCE_TYPE=DJmst.LEAVE_NAME) order by colval