create table manager1(mid int primary key ,mname varchar(50));

create table employees(eid int primary key,ename varchar(50),eage int,egender varchar(20) , mid int references manager1(mid),
Created_By varchar(20), Created_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, Updated_By varchar(20), Updated_Date 
TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

insert into employees values(mid.nextval,'nandan',23,'male',1,'satyam ',CURRENT_TIMESTAMP,' ', null);

CREATE SEQUENCE mid
start with 1
increment by 1
minvalue 1
maxvalue 9999999999
cycle;

CREATE SEQUENCE manaid
start with 100
increment by 1
minvalue 1
maxvalue 9999999999
cycle;

insert into manager1 values(mid.nextval,'satyam');
select * from manager1;

insert into employees(mid.nextval,);

select * from employees;
select * from manager1  where eid=44;
delete from employe where eid=111;
commit;

alter table manager1 modify column active varchar(10);



