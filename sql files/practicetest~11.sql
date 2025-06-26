create or replace trigger display_emp before delete or insert or update on employee
begin

case 

when Inserting then 
dbms_output.put_line('inserting');

when updating then 
dbms_output.put_line('updating');

when deleting then 
dbms_output.put_line('deleting');
end case;
end;


create or replace trigger salary_emp before delete or insert or update on employee
for each row
when (:new.eid>0)
declare
sal number;
begin 
sal:=:new.esalary -:old.esalary;
dbms_output.put_line('old  ' || old.esalary );
dbms_output.put_line('new  ' || new.esalary);

end;



 --table type 
 test 
 



DECLARE
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

 END ;





select * from employee;

insert into employee values(15,'sk',1223,34,23233,1);




t(  1 2 3 6  )

test(1 2 3 6 5)

procedure (t)

begin
    insert into test();
    
end

create table teacher(tid int not null primary key ,tname varchar(20),taddress varchar(20),tage int,tsubject varchar(20));

create sequence tid minvalue 1 start with 1 increment by 1 cache 100; 


insert into teacher values(tid.nextval,'satyam','pune',23,'react js');

select * from teacher;



    declare
    type tech_rec is record
    (tname varcher(20),
    taddress(20),
    tage int,
    tsubject varchar(20));
    
    type tech_table is table of tech_rec;
    tab1 tech_table;
    
    begin
    tab1.tname:='satyam';
    tab1.taddress:='pune';
    tab1.tage:=23;
    tab1.tsubject:='java';
    dbms_output.put_line(tab1.tname || '-' || tab1.taddress || '-' || tab1.tage || '-' || tab1.tsubject);
    end;


DECLARE 
   TYPE salary IS TABLE OF NUMBER INDEX BY VARCHAR2(20); 
   salary_list salary; 
   name   VARCHAR2(20); 
BEGIN 
   -- adding elements to the table 
   salary_list('Rajnish') := 62000; 
   salary_list('Minakshi') := 75000; 
   salary_list('Martin') := 100000; 
   salary_list('James') := 78000;  
   
   -- printing the table 
   name := salary_list.FIRST; 
   WHILE name IS NOT null LOOP 
      dbms_output.put_line 
      ('Salary of ' || name || ' is ' || TO_CHAR(salary_list(name)));  
      name := salary_list.NEXT(name); 
   END LOOP; 
END; 

set serveroutput on;


declare
type teach1 is table of teacher%rowtype index by binary_integer;
var_teach1 teach1; 
countnum number :=1;

 procedure insertdata(teachertable in teach1) is
begin

for i in 1 ..teachertable loop

    insert into teacher values(tid.nextval,teachertable(countnum).tname,teachertable(countnum).taddress,
teachertable(countnum).tage,teachertable(countnum).tsubject);
    countnum:=countnum+1;
end loop;
end;


begin
    var_teach1(1).tname:='satyam';
    var_teach1(1).taddress:='pune';
    var_teach1(1).tage:=23;
    var_teach1(1).tsubject:='java';
     dbms_output.put_line(var_teach1(1).tname || '-' || var_teach1(1).taddress || '-' || var_teach1(1).tage || '-' || var_teach1(1).tsubject);
   
end;






