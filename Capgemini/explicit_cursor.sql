--select * from emp1;
--
--
--
---- explicit cursor
--set serveroutput on;
--DECLARE
--  
--  -- defining the cursor with all value of emp1
--  cursor emp1_cur is select * from emp1;
--  
--  -- taking all the data of emp1 table inside the emp1_rec variable
----  emp1_id  emp1.employee_id%type;
--  
--  emp1_rec  emp1%rowtype;
--  
--
--BEGIN
--  
--  -- open the cursor
--    open emp1_cur;
--    
--    --fetching the record from the cursor to the emp1_rec variable for all the columns
--    fetch emp1_cur into emp1_rec;
--    
--    
--    while emp1_cur%FOUND  LOOP
--    
--        dbms_output.put_line(emp1_rec.first_name);
--        
--        
--        -- iterated over the element of rows from the cursor
--        fetch emp1_cur into emp1_rec;
--    
--    end loop;
--    
--    
--    -- closing the cursor
--      close emp1_cur;
--
--
--end;    
--    
    
    
  
  
--- method 2



-- explicit cursor
set serveroutput on;
DECLARE
  
  cursor emp1_cur is select first_name from emp1;
  
  emp1_rec  emp1.first_name%type;
  

BEGIN
  
  
    open emp1_cur;
    
    fetch emp1_cur into emp1_rec;
    
    
   while emp1_cur%FOUND  LOOP
    
        dbms_output.put_line(emp1_rec);
        
        fetch emp1_cur into emp1_rec;
    
    end loop;
    
    
    -- closing the cursor
      close emp1_cur;


end;    
    

  