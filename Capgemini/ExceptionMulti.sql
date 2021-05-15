set serveroutput on;

DECLARE
  
    v_num  number;
    
    
begin
    
    -- nested block
      begin
          
          v_num := 'Tushar';
        
      EXCEPTION 
          WHEN OTHERS THEN
              DBMS_OUTPUT.put_line('INSIDE Put numeric value');
          
          RAISE;
        end;
        
    DBMS_OUTPUT.put_line('again new exception found');
    
--  EXCEPTION 
--  
--    WHEN OTHERS THEN
--      DBMS_OUTPUT.put_line('OUTSIDE  numeric value EXCEPTION HANDLE');
       
    
end;