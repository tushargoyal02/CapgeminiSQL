set serveroutput on;

declare 
  type v_curt is ref cursor;
  
  v_cur v_curt;
  
  v_emp emp1%ROWTYPE;
  
begin
  
  open v_cur for select * from emp1;
  
  fetch v_cur into v_emp;
  DBMS_OUTPUT.PUT_LINE( v_emp.employee_id);
  
  close v_cur;
  
  -- fetch single column
  open v_cur for select employee_id from emp1;
  
  fetch v_cur into v_emp.employee_id;
  
  
  close v_cur;
  
  
end;