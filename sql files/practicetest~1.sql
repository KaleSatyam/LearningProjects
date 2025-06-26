
declare
BEGIN
   DBMS_OUTPUT.put_line ('Hello World!');
END;


DECLARE
  l_message VARCHAR2( 255 ) := 'Hello World!';
BEGIN
  DBMS_OUTPUT.PUT_LINE( l_message );
END;

declare 

    a int:=10;
    b integer:=20;
    c number :=30;
    begin 
    DBMS_OUTPUT.PUT_LINE( a);
    DBMS_OUTPUT.PUT_LINE( b );
    DBMS_OUTPUT.PUT_LINE( c );
--    DBMS_OUTPUT.PUT_LINE( d );
--    DBMS_OUTPUT.PUT_LINE( e);
    end;
    
    
    declare 

    a varchar(10):='eewewewewe';
    b varchar2(10):='hhhhhhhhhh';
    c char:='h';
    d real:=18.1111111111111111111111111111111111111111111111111111111111111111111;
    begin 
    DBMS_OUTPUT.PUT_LINE( a);
    DBMS_OUTPUT.PUT_LINE( b );
    DBMS_OUTPUT.PUT_LINE( c );
  DBMS_OUTPUT.PUT_LINE( d);
    end;
    
    
DECLARE 
   
   num1 number := 95;  
   num2 number := 85;  
BEGIN  
   dbms_output.put_line('gl Variable num1: ' || num1); 
   dbms_output.put_line('gl Variable num2: ' || num2); 
   DECLARE  
      -- Local variables 
      num1 number := 195;  
      num2 number := 185;  
   BEGIN  
      dbms_output.put_line('local Variable num1: ' || num1); 
      dbms_output.put_line('local Variable num2: ' || num2); 
   END;  
END; 
    
    
     DECLARE  
      num3 DOUBLE PRECISION :=90; 
      num4 float :=1000;
      num1 number := 195;  
      num2 number := 185;  
   BEGIN  
      dbms_output.put_line( num1); 
      dbms_output.put_line( num2);
       dbms_output.put_line( num3); 
       dbms_output.put_line( num4); 
   END;  
    
    
        DECLARE  
      d1 date;
      d2 date;
      num1 number := 195;  
      num2 number := 185;  
   BEGIN  
   SELECT SYSDATE into d1 FROM DUAL; 
   
      dbms_output.put_line( d1); 
      dbms_output.put_line( d2); 
   END; 
   
   
   declare
    l1  constant number :=34;
    
    begin
    DBMS_OUTPUT.Put_line(l1);
    end;
    
     declare
    l1  constant number :=55;
    n_sales number:=30;
    
    begin
        if l1<=49 then
        DBMS_OUTPUT.Put_line(l1);
        else
         DBMS_OUTPUT.Put_line('number is incorrect');
        end if;
        
         IF n_sales = 300 THEN
    DBMS_OUTPUT.Put_line(n_sales);
  ELSIF n_sales <= 200 AND n_sales > 100 THEN 
     DBMS_OUTPUT.Put_line(n_sales);
  ELSIF n_sales <= 1000 AND n_sales > 500 THEN 
     DBMS_OUTPUT.Put_line(n_sales);
  ELSE
     DBMS_OUTPUT.Put_line(n_sales);
  END IF;

    end;
    
    
    declare
    fruit varchar(20):='mango';
    begin
    
    case fruit
    
    when 'apple' then 
        DBMS_OUTPUT.Put_line('this is apple'  );
    
    when 'mango' then 
    DBMS_OUTPUT.Put_line('this is mango');
    
    else
    
    DBMS_OUTPUT.Put_line('this isnt fruit');
    
    end case;
    
    end;
    
    
    
     declare
    fruit varchar(20):=' ';
    begin
    
    case 
    
    when fruit='apple' then 
        DBMS_OUTPUT.Put_line('this is apple'  );
    
    when fruit='mango' then 
    DBMS_OUTPUT.Put_line('this is mango');
    
    else
    
    DBMS_OUTPUT.Put_line('this isnt fruit');
    
    end case;
    
    end;
    
        
--        basic loop 

declare
    a int:=2;
    
    begin 
    loop 
         if a<=10 then
         dbms_output.put_line(a);
        end if;
        exit when a>10;
        a:= a+2;
    end loop;
    
    
        for i in 1 ..a loop
         dbms_output.put_line(i  || '\n');
         end loop;
        
        
        while a<=15 loop
--          if a=13 then
----         continue;
--         end if;
         
        dbms_output.put_line(a);
         a:=a+1;
         end loop;
    
    end;
    
    
    
    
    declare
    name employee.ename%type;
    
    begin 
    select ename into name from employee where eid=9;
    
    if sql%found then
    dbms_output.put_line(name);
    else
    dbms_output.put_line('data not found');
    
    end if;
    
        exception
         when NO_DATA_FOUND then
         dbms_output.put_line('data not found');
    
    
    end;
    
    
    declare 
    
    emp employee%rowtype;
    
    cursor c_emp is 
    select * from employee;
    
    begin
--        open c_emp;
        
--        loop 
--        fetch c_emp into emp;
--    
--            dbms_output.put_line(emp.eid || '-'||emp.ename ||'-'||emp.eage);
--        
--            exit when c_emp%notfound;
--        end loop;
--        close c_emp;
        
        for  i in c_emp loop
        dbms_output.put_line(i.eid || '-'||i.ename ||'-'||i.eage);
        end loop;
        
        
    end;
    
    
-- records   

declare

dept department%rowtype;

begin

    select * into dept from department where did=2;
        
         dbms_output.put_line(dept.did || '-'||dept.dname ||'-'||dept.dhead);
    end;


declare
    d department%rowtype;
    
    cursor c1 is select * from department;
    
begin
        open c1;
        
        loop
        fetch c1 into d ;
        exit when c1%notfound;
        
        dbms_output.put_line(d.did || '-'||d.dname ||'-'||d.dhead);
        end loop;
        
    close c1;
end;

-- user defined record

    declare
    
    type  r_dept is record(
    id department.did%type,
    name department.dname%type,
    head department.dhead%type);
    
    d r_dept;
    begin 
    
    select * into d from department where did=3;
    
    dbms_output.put_line(d.id || '-'||d.name ||'-'||d.head);
    
    end;
    
    
    --array
    
    declare
    
    type collages is varray(5) of varchar(30);
    
    collagelist collages;
    total int;
    begin 
        collagelist:=collages('rmc','mp','tapkir' ,'nm','mh' );
        total:=collagelist.count;
        
            for i in 1 ..total loop
                dbms_output.put_line(collagelist(i));
            end loop;
    end;
    
    
    -- procedure
    
    
    declare
     a number;
     b number;
     c number;
     
     procedure findmin(x in number, y in number ,z out number ) is 
     begin 
        if x>y then 
        z:=x;
        else
        z:=y;
        end if;
      end;
      
      begin 
        a:=10 ;
        b:=20; 
        findmin(a,b,c);
        
        dbms_output.put_line(c);
         end;

    
    declare
        a number;
        
        procedure sqroot(x in out number) is 
        begin
        
        x:=x*x;
        
        end;
        
        begin
        a:=10;
            sqroot(a);
            
            dbms_output.put_line('square root is  '  || a);
        
        end;
        
        
        declare
        
         procedure insertdept(did in number,dname in varchar,dhead in varchar )
         is 
        begin 
        insert into department values(did,dname,dhead);
        end;
        begin
            insertdept(11,'c++','aditya');
            dbms_output.put_line('record inserted');
        end;
    
    
    --function
    
    
    create or replace  function countnum  return number
        is
        total number:=0 ;
        begin
        select count(*) into total from  employee;
        
        return total;
        end;
        
        
        
        declare
        c number:=0;
        
        begin
            c:=countnum();
                dbms_output.put_line(c); 
        end;
    
    
    create or replace function sumofnum(a in number ,b in number) return 
    number
    is c number:=0;
    
    begin 
            c:=a+b;
            return c;
    end;


declare 
 ans number ;
 a number:=10;
 b number :=200;
 begin
    
 ans :=sumofnum(a,b);
    dbms_output.put_line(ans);
 end;
 
 
 
 declare
 
 d1 date;
 begin
 select current_date into d1 from dual;
 
 dbms_output.put_line(d1);
 dbms_output.put_line(to_date('12 -sep- 2021'));
 end;
 
 -- user defined exception 
 
 
 declare 
    a number :=-2;
    b number :=20;
    
    invalid_num Exception;
 
 begin
 
    if a<0 then
    raise invalid_num;
    else
    dbms_output.put_line(a);
    end if;
    
    exception
     when invalid_num then 
     dbms_output.put_line('num isnt valid its negative');
     
     when others then 
     dbms_output.put_line('pls enter number');

 end;
 
 
 