-- cursor checking open or not

set serveroutput on;

declare
  cursor dept_cur is 
    select * from dept_cp;
    

begin
  
--    open dept_cur;
    
    
    
      IF dept_cur%ISOPEN then
          DBMS_OUTPUT.put_line('opened the cursor');
      
    -- to check the cursro
      ELSIF NOT dept_cur%ISOPEN then
          DBMS_OUTPUT.put_line('Not opened');
      
      END IF;
      
      
      
      
      
end;
