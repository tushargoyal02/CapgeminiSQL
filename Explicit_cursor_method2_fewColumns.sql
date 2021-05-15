set serveroutput on;

declare
--  emp_rec varchar(2) := '';
  cursor emp_cur is select first_name, SALARY from emp1;
    
  -- taking every row with datatype here
  emp_rec emp_cur%ROWTYPE;
  
  BEGIN
  -- cursor is made open
  open emp_cur;
    
  -- 
  fetch emp_cur into emp_rec;
  
  while emp_cur%FOUND
  loop
    dbms_output.put_line(emp_rec.first_name ||' makes '||emp_rec.salary);
    
    fetch emp_cur into emp_rec;
    
  end loop;
  
  close emp_cur;
  
end;
  
    
    
    