-- taking the data inside the variable using the select statement 

select employee_id, first_name from emp1;


set SERVEROUTPUT ON;

declare
 
  eId emp1.employee_id%type;
  ename emp1.first_name%type;
  
begin

  select employee_id, first_name into eId, ename
  from emp1 where employee_id=100;
  
  DBMS_OUTPUT.PUT_LINE(eId || ' '  || ename);
  
END;


--- rowtype
declare
 
  empDetails emp1%ROWTYPE;
  
begin

  select * into empDetails
  from emp1 where employee_id=100;
  
  DBMS_OUTPUT.PUT_LINE(empDetails.first_name);
  
END;

select * from emp1;