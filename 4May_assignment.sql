

select * from DEPARTMENTS
offset -2 rows  FETCH first 50 percent row only;


-- round -- numerical function - decimal part or either for the integer

-- 0-4  (value will be same or rounded to previous Zero's
-- If the value of n in the round off function is same as the number of decimal digit then no changes in the data
select round(23.646,2) from dual;


select round(23.799,2) from dual;

select round(676.556, -1) from dual;


------------- 

select first_name,sum(employee_id) as SEmp from employees group by FIRST_NAME
HAVING first_name='Neena'
order by Semp;


create table newEmp(EmpNo number(9), FUllName varchar2(20), country char(2) ) ;

desc newEmp;

-- dml commands ( insert, update, delete, merge, select)   
-- ddl - create , alter, trucate


insert into newEmp(empNo,fullname, country)
values (12,'Tushar','IN');


insert into newEmp(fullname,empNo, country)
values (155,13,'IJ');

select * from NEWEMP;


drop table newEmp;


create table newEmp(EmpNo number(9), FUllName varchar2(20), country char(2), Newdate date default sysdate ) ;

insert into newEmp(empNo,fullname, country,newdate)
values (12,'Tushar','IN','22-mar-2021');


select * from newEmp;


insert into newEmp(empNo,fullname)
values (12,'Tushar');


drop table newEmp;


-- constraints NOT NULL
create table newEmp(EmpNo number(9), FUllName varchar2(20) unique, country char(2) NOT NULL, Newdate date default sysdate ) ;

insert into newEmp(empNo,fullname, country,newdate)
values (12,'Tushar','IN','22-mar-2021');


select * from newEmp;


insert into newEmp(empNo,fullname)
values (12,'Tushar');



create table newEmp2
  (EmpNo number(9), 
  FUllName varchar2(20),
  country char(2),
  Newdate date default sysdate,
  constraint newEmp2_COL_CONST_UNIQ unique(empNO ) );
  
insert into newEmp2(empNo,fullname, country,newdate)
values (13,'Tushar2','IN','22-mar-2021');


-- method 2
insert into newEmp2
values (16,'Tushar2','IN','22-mar-2021');


select * from newEmp2;




-- update 
/* UPDATE  table
  set col=value   
  where condition    -- Primary key */
  
update newEmp2
set fullname='Tushar'
where empno=13;


select * from newEmp2;


update  newEmp2
set country='US'
where empno=12;

select * from newEmp2;

--- creating a copy of the table only  (taking the data from the select query)
create table newEmp_cp1
as 
select * from newemp2 where EMPNO=12; ;

-- master  / main table
select * from newEmp2;

-- copied table
select * from newEmp_cp;


-- update the values of newEmp_cp of emp 12 for the country column as the same country of newemp2 for the empNo 12  


describe newEmp_cp;



-- delete statement
--

-- delete [from] table   [where condition]

select * from newEmp_cp;

desc newEmp_cp;
delete newEmp_cp;


select * from newEmp2;

delete from newEmp2 
where empNo=12;


--create table newEmp2_cp
select * from newEmp2;

rollback;

-- Truncate 
truncate table newEmp2 where empNo=13;


select * from newEmp2_cp;



-- rollback , savepoint, commit



select * from newEmp2;

-- delete is my current transaction
delete from newEmp2;



truncate table newEmp2;
rollback;

select * from newEmp2;
---- insert
insert into newEmp2
values (1,'t','I','20-mar-2021');

select * from newEmp2;

drop table newemp2;

select * from newEmp2;

rollback;

--select * from newEmp2;





-- commit now onwards after than rollback again
select * from newEmp2_cp;

insert into newEmp2_cp
values (1,'t','I','20-mar-2021');

insert into newEmp2_cp
values (5,'t','I','20-mar-2021');

savepoint EmpData5;

insert into newEmp2_cp
values (3,'t','I','20-mar-2021');

insert into newEmp2_cp
values (4,'t','I','20-mar-2021');


select * from newEmp2_cp;

rollback to savepoint EmpData5;

delete from newEmp2_cp;


select * from newEmp2_cp;


create table newe(id number);

desc newe;

alter table newe
  add (name varchar(10)   ) ;
  
-- add the new column with the dept with varchar  the default value should be "HR"
-- add once more column with location id with char of size 2 & the constraint should be NOT  NULL


alter table newe
  modify ( name varchar(20)  );
  
-- modify the number column with precision as 3 & scale as 10  
-- after the same add the default value as zero in the same column

--  Try to find out the way to change the char datatype of location id to the varchar2 datatype

-- you add on one more column as username with varchar datatype
  --   do the changes inside the table so that no one can access these username column 
    -- try to see the output from the select statement
    
    
-- drop only the unused column you had as defined upside as username


-- ---------------------$------------------$----------------
-- how to not allowed any DDL & DML operation on your table
-- alter  command -> READ ONlY

select * from newe;


insert into newe values(2,'c1apgemini');

alter table newe READ ONLY;


delete newe;


--$$ assignment after read only option you want to perfrom the dml operation like insert & update how you will perform it?

-- Tricky  question
select * from newe;


drop table newe;
-- to retrieve data from the dropped table
select * from USER_RECYCLEBIN
where original_name='newe';


-- 

drop table emp0;
create table emp0(Fname varchar2(10));


desc emp0;

alter table emp0
rename column fname to FullName; 



--ASSignment    try to rename the emp0 table to new name "EmpDetails" 

-- Assign   adding a new volumn with any data type in between the two column,
--     - add on a new column with date datatype after the FullName columns





-- sets operations  
select * from employees;


create table emp1
as select * from employees
fetch first 10 rows only;


select * from emp1;


create table emp2
as select * from employees
offset 5 rows fetch first 10 rows only;

select * from emp2;




select * from emp2
minus
select * from emp1;





select  * from job_history;



-- take empid, job_id , deptId & email from employees & you need to take the next column as empId , jobID, deptId from the job_history table
--   ( not simple)  [HINt: set operation it ask you to have same number of column with the operation]

-- in the first question, sort them in the final output { Intermediate question Oracle examination)



select first_name from employees
union
select null as names from job_history
order by first_name;









--[5:17 PM] Chandra, A Karthik
    select employee_id,department_id,job_id,email
from employees
union
select employee_id,department_id,job_id,to_char(null) mail
from JOB_HISTORY;
