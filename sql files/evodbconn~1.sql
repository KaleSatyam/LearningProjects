create table teacher(tid int primary key ,tname varchar(20),tage int ,tcity varchar(20),tsubject varchar(20));
create sequence tid start with 1 increment by 1 ;
insert into teacher values(tid.nextval,'satyam',23,'pune','java');
select * from teacher;

set serveroutput on;


declare 

     TYPE techtable is table of teacher%rowtype  index by binary_integer;
     tech1 techtable;
        

     
     begin
      tech1(1).tname:='akash'; 
      tech1(1).tage:='21';
      tech1(1).tcity:='latur';
      tech1(1).tsubject:='marathi';
      
--      addteacher(tech1); 
        dbms_output.put_line(tech1(1).tid || tech1(1).tname || tech1(1).tage );
     end;
     
     
     
    
     
     declare 
     type t1_record is record (
     tname varchar(20),
     tage int,
     tcity varchar(20) ,
     tsubject varchar(20)
     );
     
     type tab2 is table of t1_record index by binary_integer;
     t3 tab2;
     
     procedure addteacher( t1 in tab2 ) is
     cursor c1 is select * from teacher;
    begin
    for i in t1.first ..t1.last loop
    insert into teacher values(tid.nextval,t1(i).tname,t1(i).tage,t1(i).tcity,t1(i).tsubject);
    commit;
    dbms_output.put_line('record inserted sucessfully');
    end loop;
    
   
    
    if sql%found then 
     dbms_output.put_line(sql%rowcount);
    
    end if;    
    end;
     
     begin
     
        t3(1).tname:='akash'; 
      t3(1).tage:='21';
      t3(1).tcity:='latur';
      t3(1).tsubject:='marathi';
       t3(2).tname:='ganesh'; 
      t3(2).tage:='23';
      t3(2).tcity:='chakur';
      t3(2).tsubject:='english';
      
      addteacher(t3);
--       dbms_output.put_line( t3(1).tname || t3(1).tage || t3(1).tcity );
     end;   
     
     
    create or replace procedure addition(a in number,b in number ,c out number) is 
    begin 
        c:=a + b;
    end;
     
     
     declare
     x number :=5;
     y number :=78;
     z number;
     begin
        addition(x,y,z);
        dbms_output.put_line(z);
     end;
     
     
     declare
     x number :=1;   
     namee varchar(20):='satyam';
     begin
     LOOP 
      dbms_output.put_line(namee); 
      x := x + 1; 
      IF x > 10 THEN 
         exit; 
      END IF; 
   END LOOP; 
     end;
     
     
     
     
     
     