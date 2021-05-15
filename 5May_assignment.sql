

select * from employees;


-- create a sequence

create sequence Cap5;


-- dictionary views: 
select * from user_sequences;

-- create the same table use ids as primary key & the names as varchar & the roomNo (it should take the current value of the sequence)
create table seqTest
  ( ids number, names varchar(10));
  
  
-- insert the data but using sequence
insert into seqTest  values( cap5.nextVal, 'Tushar5');

insert into seqTest  values( cap5.currVal, 'Tushar4');

select cap5.currval from dual;

select cap5.nextval from dual;

select * from seqTest;


Drop sequence cap5;
----------------


create sequence cap5
start with 5
increment by 5;


delete from seqTest;


insert into seqTest  values( cap5.nextVal, 'Tushar4');

select * from seqtest;



--- create the sequence that witll start with -1 & the increment values will be -10
-- update the ids value with the current value of the sequence
-- create a sequence with starting value as 2, increment by 2 maxvalue as 10 & as cycle option as true
select cap5.currval from dual;




-- how we will set up the primary key as with the values of sequence

drop table seqtest;

create sequence cap5;

create table seqtest(
  ids number default cap5.nextval PRIMARY KEY,
  names varchar2(10),
  age number default 0
  );
  
  
insert into seqtest(names, age) values ('TG1',401);


select * from seqtest;




drop sequence cap5;

drop sequence cap6;

create sequence cap6
start with 2
increment by 2
minvalue 2
maxvalue 10
nocache
cycle;


--delete from seqtest;



drop table seqtest;

create table seqtest(
  ids number default cap6.nextval ,
  names varchar2(10),
  age number default 0
  );
  

insert into seqtest(names, age) values ('TG1',401);
insert into seqtest(names, age) values ('TG1',401);
insert into seqtest(names, age) values ('TG1',401);
insert into seqtest(names, age) values ('TG1',404);
insert into seqtest(names, age) values ('TG1',405);

insert into seqtest(names, age) values ('TG6',406);
insert into seqtest(names, age) values ('TG1',407);
select * from seqtest;







-------------

select * from emp1;
--INTERSECT
select * from emp2;


-- on clause
select emp1.employee_id,emp2.employee_id ,emp1.first_name, emp2.email 
from emp1
FULL outer join emp2
on (emp1.employee_id=emp2.employee_id)
order by emp1.employee_id;


-- cross join
select emp1.employee_id,emp2.employee_id ,emp1.first_name, emp2.email 
from emp1
cross join emp2;



select emp.employee_id, emp.first_name, dep.DEPARTMENT_NAME 
from employees emp
left outer join departments dep
on (emp.department_id = dep.department_id);



-- self join  (Inner, left, full, right)

-- to join the table itself


select * from employees;


--  find out which employee id & the name of employee has its own manager id & its name

select
 emp.employee_id,emp.first_name, managers.employee_id, managers.FIRST_NAME 
  from employees emp,
      employees managers
      where emp.manager_id=managers.employee_id;
      -- 124  = 124


/* assignements  

    find out the empId, fullName, dept_id for those person whose salary is >= 5000  (employees)
    find out their name of department, location id   (departments)
    city , country_id     (locations table)
    You have to get all the employee in case if they doesn't have any departments
    
*/

-- view    
/*  - to restrict the data accessibility

 Logica; represtation of data from 1 or more tables  (database object)
 - retrirval time to access any data faster 
 - On joins ( 1 hours)   -> views 
 
 
 create table tablema,e
 as 
 select * from employees;
 
 syntax:    create [replace] view viewName(expression)
          as subquery
          [With check option 
          with read only]
          
  replace: recreate the view
 */
 
 
 -- creating the view in oracle

 
 
 select * from user_views;
 
 
 
 -- content inside the view
 select * from employee_v;
 
 -- insert into the view
 insert into employee_v(employee_id,first_name, last_name)
 values (89,'tushar','goyal');
 
 drop view employee_v;
 
 
 
 
 create table employee_cp
 as 
 select first_name, last_name, employee_id from employees;
 
 -- view
 create view employee_v
 as select employee_id, first_name, last_name from employee_cp;
 
 
insert into employee_v(employee_id,first_name, last_name)
 values (89,'tushar','goyal');

-- we got the data inside the view
select * from employee_v; 

-- the same into my table
select * from employee_cp;

-- note performing any DML opeeration on the view it will be affected on your table & vice-a-versa
insert into employee_cp values('G','T',88);


-- delete from table
delete from employee_cp 
where EMPLOYEE_ID=88;

drop view emp_v;


-- creating a view with the different name of columns 
create view emp_v(empId)
as 
select employee_id  from employees;


drop view emp_v;

-- Littrle complex view   [If using the group by function in creation of view give the column name as the alias for the functions]
create or replace view emp_v
as 
select  DEPARTMENT_ID,max(salary), sum(salary) as salary
  from employees 
  group  by DEPARTMENT_ID;
  
select * from emp_v;


delete from emp_v where department_id=100;



-- create a view with read only option
create or replace view emp_v
as 
select  DEPARTMENT_ID, salary
  from employees 
  with read only;
  
select * from emp_v;

delete from emp_v where salary=24000;
delete emp_v;

drop view emp_v;














/* You need to create a view in oracle with the name as Employee_details
    - You need to select the employee_ID, first_name,salary ,last_name column but with last_name "MR" should be prefixed with the values
    -  Also Take department_name from departments table & if no department_name is present print out "HR" in place of NULL value
    - Do the join on employees & departments table as inner join
    - Select all the rows from the employees table in case any value matches in the join condition or not
*/

-- nvl2(department_name, depart_name, "HR"

-- can you hear me???



-- to create a view of the employees table with first_name, employee_id, salary & department_id those department which are having the department_id=60
    -- Perform the DML operation on the same data only where the department_id=60  (insert)
--    No dml operation should be performed in case we provide any other department_id


-- You have to do a little PL/SQL  , basic syntax, declare, begin, end
-- variable , use the variable with the default values

-- IN SQL  -> Index  (Idea on index)  -> how index is done, how it increase performance, how to use primary key as the index




-- constraint, statements (DDL, dml, tcl, dcl)   , comments

--Statements  - English characters words , SQL , query  (Statments)  

DML, DDL, DCL, TCL

DML : select, insert, delete , update 
DDL: data defination   (schema / metadata/    -> create, alter, drop, rename, truncate, comment
TCL : Transaction control language    -> rollack, savepoint, commit, rollack to savepoint
DCL : data control language   ( data accessibility for the users)    -> Grant, revoke





-- comments  - This is getting from the employess
-- single line comments
/*  adsf
asf
as
dfa
sf
a*/

select * from employees;



--- creating the table comments



-- constraints  : condition - data intergrity / invalid data into the tables
-- NOT NULL, PRIMARY, CHECK, Unique, foreign key

create table emp
 (empId number, nams varchar2(10),
 constraint emp_constraint_unique UNIQUE empId

