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
   AND (start_date >= sysdate ) and   
   xx_sshr_tckt_encash_leave_dtl.person_id =:personIdVal and   
   (xx_sshr_tckt_encash_leave_dtl.ticket_request='Encashment'   
   or xx_sshr_tckt_encash_leave_dtl.ticket_request='Booking and Encashment');
   
   ------------------------------------------------------------------------------------------------
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
           encash.leave_id                                    
       FROM   xx_sshr_tckt_encash_leave_dtl encash inner join                                  
        xx_sshr_ticket_encash_dtl prent on encash.person_id=prent.person_id INNER JOIN xx_sshr_req_master req ON 
        req.sshr_req_master_id = prent.SSHR_REQ_MASTER_ID                                    
                                                AND   req.status not IN ('RE','WD','SFC')  and 
                                                encash.person_id =:personIdVal               
   )                                   
   AND (start_date >= sysdate ) and   
   xx_sshr_tckt_encash_leave_dtl.person_id =:personIdVal and   
   (xx_sshr_tckt_encash_leave_dtl.ticket_request='Encashment'   
   or xx_sshr_tckt_encash_leave_dtl.ticket_request='Booking and Encashment');
-------------------------------------------------------------------------------------------------------------------
                
            delete from XX_SSHR_TICKET_ENCASH_MASTER where sshr_req_master_id=84638;
            delete from xx_sshr_ticket_encash_dtl where SSHR_REQ_MASTER_ID=84638;
            commit;
            select * from xx_sshr_tckt_encash_leave_dtl;
            select * from xx_sshr_ticket_encash_dtl;
            select * from XX_SSHR_TICKET_ENCASH_MASTER;
           
            SELECT                                    
           encash.leave_id                                    
       FROM   xx_sshr_tckt_encash_leave_dtl encash inner join                                  
        xx_sshr_ticket_encash_dtl prent on encash.person_id=prent.person_id INNER JOIN xx_sshr_req_master req ON 
        req.sshr_req_master_id = prent.SSHR_REQ_MASTER_ID                                    
                                                AND   req.status not IN ('RE','WD','SFC')  and 
                                                encash.person_id =:personIdVal;
                                                
                                                select* from xx_sshr_emp_master where person_number='HOC010847';
                                                300000069273570