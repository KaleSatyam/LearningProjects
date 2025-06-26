 create table department(did int primary key not null,dname varchar(20) not null );
 
 create table employee(eid int primary key not null,ename varchar(20),enumber number,eage int,esalary number,
did int not null,foreign key(did) REFERENCES department(did));

set serveroutput on;

DECLARE
   /*  emp_name employee.ename%type;
    emp_num employee.enumber%type;
    dept_name department.dname%type; */
    
    cursor emp_dept is 
    select ename,enumber,dname  from employee,department 
    where department.did=employee.did;
    
    data_ed emp_dept%rowtype;


BEGIN
 
        open emp_dept;
        loop
        fetch emp_dept into data_ed;
        exit when emp_dept%notfound;
        
       dbms_output.put_line(data_ed.ename || ' '  || data_ed.enumber ||  ' '  || data_ed.dname);
        end loop;
        
 
--    select ename,enumber,dname into emp_name,emp_num,dept_name from employee,department 
--    where department.did=employee.did;
--    
--    loop 
--    if sql%found then
--    
--    dbms_output.put_line(emp_name ' '   || emp_num ' ' || dept_name);
--    
--    end if;
--    end loop;
    

 END ;
 
 select ename,enumber,dname  from employee,department 
    where department.did=employee.did;
    
 
 declare 
 
 deptdetail department%rowtype;
 
 begin
    
    select * into deptdetail from department where did=10;
    
    dbms_output.put_line( deptdetail.did || ' '  || deptdetail.dname ||  ' '  || deptdetail.dhead);
 
 end;
 
 select * from department where did=10;
 ALTER table department add dhead varchar(20);
 
 
 
  declare 
 
 empdetail employee%rowtype;
 
 begin
    
    select * into empdetail from employee where eid=10;
    
    dbms_output.put_line( empdetail.eid || ' '  || empdetail.ename ||  ' '  || 
    empdetail.enumber || ' ' || empdetail.did);
 
 end;
 
 
 set serveroutput on;
DECLARE
CURSOR C1 IS
SELECT * FROM employee WHERE did= 10;
BEGIN
FOR i IN C1
LOOP
DBMS_OUTPUT.PUT_LINE(  i.enumber || '-'|| i.ename || '-' || i.eage || '-' || '-'|| i.did);
END LOOP;
END;


        declare 
        type emp_cursor is ref cursor;
        c1 emp_cursor;
        emp_c1 employee%rowtype;
        
        begin
            open c1 for select * from employee where did=10;
            loop
            fetch c1 into emp_c1;
            exit when c1%notfound;
            DBMS_OUTPUT.PUT_LINE(  emp_c1.enumber || '-'|| emp_c1.ename || '-' || emp_c1.eage || '-' || emp_c1.did
            || '- '|| emp_c1.esalary);
            end loop;
            close c1;
            
         end;
         
         declare 
         cursor c_dep is select * from department order by did asc;

        begin
            for i in c_dep loop 
                 DBMS_OUTPUT.PUT_LINE(i.did ||' - '|| i.dname|| ' - '||i.dhead);
        end loop;
        end;


declare
l_var number(6,1):=20000.9;
begin
dbms_output.put_line('value :' || l_var);
end;
 
 
 declare 
 l_var number:=100;
 l_value number:=0;
 begin
 l_var:=l_var + l_value;
 dbms_output.put_line('value :' || l_var);
 end;
 
 
