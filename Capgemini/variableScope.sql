set SERVEROUTPUT ON;


declare
  ids number := 100;   -- global variable
  
begin 
  DBMS_OUTPUT.PUT_LINE('Outer Variables '|| ids);
  
    declare
        newId number :=200;
    begin 
        DBMS_OUTPUT.PUT_LINE('Local variable '|| newId);
    
        -- printing out the global variable
        DBMS_OUTPUT.PUT_LINE('variable '|| ids);    
     END;
   
END;
  


select * from emp1;