alter table teacher1 add  tsalary number;
select * from teacher;

set serveroutput on;

create or replace procedure s1(name1 in varchar2 ,city in  varchar2 ,subject in varchar2) is 
type teacher1 is table of teacher%rowtype;
tab1 teacher1;
begin 

select * bulk collect into tab1 from teacher where (tname like name1 or name1 is null) and  (tcity=city or city is null)and 
(tsubject=subject or subject is null);

for i in tab1.first ..tab1.last loop
dbms_output.put_line(tab1(i).tid ||' - '|| tab1(i).tname||' - '|| tab1(i).tcity || ' - ' || tab1(i).tsubject );
end loop;
end;


declare
n varchar2(20):='';
c varchar2(20):='latur';
s varchar2(20):='';
info teacher%rowtype;
begin
s1(n,c,s);


--dbms_output.put_line(n.tname||' - '|| c.tcity || ' - ' || s.tsubject );
--for i in 1 ..n.count loop
--dbms_output.put_line(info(i).tid ||' - '|| info(i).tname||' - '|| info(i).tname || ' - ' || info(i).tage );
--dbms_output.put_line(n.tname||' - '|| c.tcity || ' - ' || s.tsubject );
--end loop;


--if info%notfound then
--dbms_output.put_line('no data found');
--else
--for i in 1 ..info loop
--dbms_output.put_line(info(i).tid ||' - '|| info(i).tname||' - '|| info(i).tname || ' - ' || info(i).tage );
--end loop;
--end if;
end;

create table country
(
c_id int NOT NULL,
name varchar2(50) NOT NULL,
PRIMARY KEY(c_id)
);
select*from country;

insert into country(c_id,name) values('1','india');
insert into country(c_id,name) values('2','australia');
insert into country(c_id,name) values('3','germany');
insert into country(c_id,name) values('4','canada');
insert into country(c_id,name) values('5','china');

select*from country;

commit;
savepoint country;

create table state
(
state_id int NOT NULL,
state_name varchar2(50) NOT NULL,
c_id int NOT NULL,
PRIMARY KEY(state_id),
FOREIGN KEY(c_id) REFERENCES country(c_id)
);

select*from state;

insert into state( state_id,state_name,c_id) values('11','maharashtra','1');
insert into state( state_id,state_name,c_id) values('22','gujrat','2');
insert into state( state_id,state_name,c_id) values('33','assam','3');
insert into state( state_id,state_name,c_id) values('44','bihar','4');
insert into state( state_id,state_name,c_id) values('55','andhra pradesh','5');

select*from state;

commit;
savepoint state;

create table city
(
city_id int NOT NULL,
state_id int NOT NULL,
city_name varchar2(50) NOT NULL,
PRIMARY KEY(city_id),
FOREIGN KEY(state_id) REFERENCES state(state_id)
);

select*from city;

insert into city( city_id, state_id, city_name) values('1','11','pune');
insert into city( city_id, state_id, city_name) values('2','22','parbhani');
insert into city( city_id, state_id, city_name) values('3','33','mumbai');
insert into city( city_id, state_id, city_name) values('4','44','shegaon');
insert into city( city_id, state_id, city_name) values('5','55','nagpur');

select*from city;

commit;

update city set city_name='pune' where city_id=2;
commit;



select city_name, state_name,name FROM city JOIN state ON(city.state_id= state.state_id) join 
country on (country.c_id=state.c_id) where state_name = state_name;

create or replace procedure selectc(c_name in varchar2 ,stname in  varchar2 ,country in varchar2) is 
type t1_record is record (
     cityn varchar(20),
     staten varchar(20),
     country varchar(20)
     );
     type tab2 is table of t1_record ;
     t1 tab2;
begin 

select city_name, state_name,name bulk collect into t1 FROM city JOIN state ON(city.state_id= state.state_id) join 
country on (country.c_id=state.c_id) where (city_name like c_name or c_name is null) and  (state_name=stname or stname is null)and 
(name=country or country is null) ;

for i in t1.first ..t1.last loop
dbms_output.put_line(' city - ' || t1(i).cityn  || ' state - ' || t1(i).staten  || ' country - ' || t1(i).country );
end loop;
    
    exception 
     
     when no_data_found then 
    dbms_output.put_line('no data found plz add correct data' );
    
       when others then 
        dbms_output.put_line('you have an error add correct data ' );
end;


declare 
city varchar(20):='';
state1 varchar(20):='';
country varchar(20):='aa';

begin
  dbms_output.put_line(city || state1 || country);
end;
