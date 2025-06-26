create or replace function print return number
is 
a number;
begin
    a:=100;
    dbms_output.put_line('in number');
    return a;
end;


declare
p number;
 function print return number
is 
a number;
begin
    a:=100;
    dbms_output.put_line('in function');
    return a;
end;

begin 
    p:=print;
    
    dbms_output.put_line(p);
    
    end;
    
    set serveroutput on;
    
    
    
    
    
    create or replace procedure  println(a in number,b in number) 
    is
    begin
    
        dbms_output.put_line( 'addition is   :'|| (a+b));
    end;
    
    
    declare 
      x number :=30;
    y number :=40;  

    
  
    begin 
    println(x,y);
    end;
    
    
    
    
    select * from employee;
    
    
    declare 
    
     cursor   e1 
    is
    select * from employee;
    
    begin 
    for i in e1 loop
    
    dbms_output.put_line(i.eid  || '-'  ||i.ename);
    end loop;
    end;
    
    
declare
null_pointer exception;
pragma exception_init(null_pointer,-20001);
a number :=20;

begin
    if a>10 then
--    raise null_pointer;
RAISE_APPLICATION_ERROR(-20000, 'Account past due.');
    end if;
--    exception 
--    when null_pointer then 
--    dbms_output.put_line('null error');

end;
    
    
    
    declare
    type a is varray(2) of number;
    b  a;
    begin
            b:=a(2,5);
            for i in 1  ..b.count loop
            dbms_output.put_line(b(i));
            end loop; 
    end;
        
        declare 
        type e_c is ref cursor return employee%rowtype ;
        c1 e_c;
        e1 employee%rowtype;
        begin
        open c1 for select * from employee;
        loop
        fetch c1 into e1 ;
        dbms_output.put_line(e1.eid  || '-'  ||e1.ename);
        
        exit when c1%notfound;
    end loop;
    
    end;
    
    
    create or replace package order as
    gc_shipped_status constant varchar(10):='shipped';
    gc_pending_status constant varchar(10):='shipped';
    gc_canceled_status constant varchar(10):='shipped';
    
    
    
    
    