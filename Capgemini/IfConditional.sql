-- conditions  (if -else)    
-- if then
set SERVEROUTPUT ON;

declare
  empId emp1.employee_id%type;
  empsal emp1.salary%type;
  v_num number := 5;
  
begin
  
  select employee_id, salary into empId,empSal from emp1 where EMPLOYEE_ID=101;
  
    dbms_output.put_line(empId || ' ' ||empSal);
  
    If (empSal < 8000) THEN
      dbms_output.put_line('5 is less than 10');
    
    -- check the condition in case the above condition becomes false  
    elsif (v_num <3) then 
       dbms_output.put_line('5 is less than 6 ');
       
    else
      dbms_output.put_line('No condition match ');
    end if;
  
end;
    
