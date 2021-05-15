-- method 3 for explicit cursor

set SERVEROUTPUT ON;
declare

  cursor dept_cursor 
    IS 
      select * 
          from dept_cp;
          
    
begin

  for dept_record in dept_cursor
    LOOP
      DBMS_OUTPUT.put_line(dept_record.department_name ||  ' ' || dept_record.department_id);
      
    END LOOP;
    

end;
