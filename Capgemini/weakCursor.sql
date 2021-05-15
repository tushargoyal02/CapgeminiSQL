-- Reference cursor -- weakly,  strongly
-- weeekly reference cursor all the things depend on the number of rows you are getting in the output.
set serveroutput on;

declare
  type v_curt is ref cursor;
  
  v_cur v_curt;
  
  -- taking all the column of emp1
  v_emp emp1%rowtype;
  


begin
  
    open v_cur for select * from emp1;
    
    
    fetch v_cur into v_emp;
    
        DBMS_OUTPUT.put_line('Mutiple Out: '|| ' ' ||v_emp.first_name);
    
    
    close  v_cur;


-- ---------- fetch for single column

      
    open v_cur for select first_name from emp1;
    
    
    fetch v_cur into v_emp.first_name;
    
        DBMS_OUTPUT.put_line(v_emp.first_name);
    
    
    close  v_cur;
  
end;  