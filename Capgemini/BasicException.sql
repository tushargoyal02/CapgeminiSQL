--- exception class 1
set serveroutput on;

declare 
    v_num number :=12;
    

begin

    -- zero division exception
    v_num := v_num/0;
    
    
    DBMS_OUTPUT.put_line('Hey hello');

--EXCEPTION
--  
--    when ZERO_DIVIDE  then
--       DBMS_OUTPUT.put_line('Value is not divisible by zero');

end;