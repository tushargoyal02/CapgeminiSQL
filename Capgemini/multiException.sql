select * from dept_cp;

set serveroutput on;

declare 
    v_deptname dept_cp.department_name%type;
    

begin
    
      select department_name 
        into v_deptname 
        from dept_cp where department_id=1000;
        
        
       DBMS_OUTPUT.put_line('Department Name: ' || v_deptname); 

--exception
--    when too_many_rows then
--      DBMS_OUTPUT.put_line('Value is very large');
--
--    when NO_DATA_FOUND THEN
--      DBMS_OUTPUT.put_line('Sorry! we havent found the data ');

end;