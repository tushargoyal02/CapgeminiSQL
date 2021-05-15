set serveroutput on;

declare
--  emp_rec varchar(2) := '';
  cursor emp_cur is select first_name, SALARY from emp1;
    

  BEGIN
-- just taking the record for the values of cursor here
  for emp_rec in emp_cur  
  loop
    dbms_output.put_line(emp_rec.first_name ||' makes '||emp_rec.salary);
       
  end loop;
    
end;
  
    
    
    