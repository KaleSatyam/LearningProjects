create or replace function calc(x in number ,y in number) return number
is
z number:=0;

begin 
z := x + y;

return z;
end;


set serverout on;
declare 

a number :=10;
b number :=20;
c number;
begin 
c:= calc(a,b);
dbms_output.put_line(c);

end;


create or replace package hr as
    
   procedure display_data(nm in varchar,ag in numbber,ct in varchar);
   
   end hr;
   
 create or replace package body hr as
   
  procedure display_data(nm in varchar,ag in numbber,ct in varchar) is 
  begin
  dbms_output.put_line('i am  '|| nm ||' and age is '||ag|| ' and city is '|| ct);
  end display_data;
   end hr;
   
   
declare 
a varchar(20) :='satyam';
b number :=21;
c varchar(20) :='pune';

begin
hr.display_data(a,b,c);
end;


