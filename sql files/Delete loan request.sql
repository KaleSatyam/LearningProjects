set SERVEROUTPUT ON;
DECLARE 
   type namesarray IS VARRAY(50) OF VARCHAR2(10); 
   names namesarray; 
   reqno varchar(10);
   Total integer;
   b varchar(50);
BEGIN 
  names := namesarray('LR-084566'); 
   total := names.count; 
   dbms_output.put_line('Total '|| total ); 
   FOR i in 1 .. total LOOP 
   select SUBSTR(names(i),5,9) into reqno FROM DUAL;
      dbms_output.put_line('req id  : ' || reqno ); 
      
      delete  from xx_sshr_req_master where sshr_req_master_id=reqno;
      delete from xx_sshr_loan_master where sshr_req_master_id=reqno;
      delete from xx_sshr_notification_master where object_id=reqno;
        
        findid(reqno, b); 
        dbms_output.put_line('output  : ' || b ); 
        
      delete  from xx_sshr_notification_dtl where notif_master_id in (b);

      delete  from xx_sshr_req_approval_details where sshr_req_master_id=reqno;

      delete from xx_sshr_element_entry_dtl where req_master_id=reqno;
      commit;
      dbms_output.put_line('req id deleted : ' || reqno ); 
   END LOOP; 
END; 
--------------------------------------------------------------------------------------------
declare
noti_id varchar(10);
CURSOR noti_id_c is select NOTIF_MASTER_ID  from xx_sshr_notification_master where object_id=69869;
var1 varchar(50);
begin
var1 :=null;
open noti_id_c ;
loop
fetch noti_id_c into  noti_id;
exit when noti_id_c%notfound;
if noti_id_c%rowcount=1 then
var1:=noti_id;
else
var1:=var1||','|| noti_id;
end if;
dbms_output.put_line('req id in find : ' || var1 ); 
END LOOP;
end;

-----------------------------------------------------------------------------
create or Replace procedure findid(nofid in number,var1 out varchar)
is
noti_id varchar(10);
CURSOR noti_id_c is select NOTIF_MASTER_ID  from xx_sshr_notification_master where object_id=nofid;
--var1 varchar(50);

begin
dbms_output.put_line('id  : ' || nofid ); 
var1 :=null;
open noti_id_c ;
loop
fetch noti_id_c into  noti_id;
exit when noti_id_c%notfound;
if noti_id_c%rowcount=1 then
var1:=noti_id;
else
var1:=var1||','|| noti_id;
end if;
dbms_output.put_line('req id in find  : ' || var1 ); 
END LOOP;
end;

---------------------------------------------------
declare
b varchar(50);
BEGIN 
   
   findid('47604', b); 
   dbms_output.put_line(' ID are : ' || b); 
END; 

-------------------------------------------------------


create or Replace procedure assign_email_on_person(noid in number)
is
noti_id varchar(20);
CURSOR person_details is select person_id  from xx_sshr_emp_master;
begin
open person_details ;
loop
fetch person_details into  noti_id;
exit when person_details%notfound;
dbms_output.put_line('id  : ' || noti_id ); 
update xx_sshr_emp_master set email_id='satyam.kale@mastek.com' where person_id=noti_id;
END LOOP;
end;

declare

BEGIN 
   
   assign_email_on_person(47604); 
END; 





