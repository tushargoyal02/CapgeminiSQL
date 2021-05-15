/* 
LOOP
    statements
    
END LOOP;  Loop statement -> will execute in the sequence, run infinite time with no conditons,   exit
*/
set SERVEROUTPUT ON;  
--
--declare
--  custId number := 20;
--  
--  
--begin
--   loop
--  
--    dbms_output.put_line('value of custId' || ' ' || custId);
--    if custId =60 then
--      exit;
--      
--    end if;
--    
--    custId := custId + 20;
--    dbms_output.put_line('New custId' || ' '  || custId );
--    
--  
--    
--  end loop;
--  
--  
--end;













-------------------------   while loop
--set SERVEROUTPUT ON;  
--
--declare
--  custId number := 20;
--  
--  
--begin
--  while custId<60  loop
--  
--    dbms_output.put_line('value of custId' || ' ' || custId);
--
--    custId := custId + 20;
--
--    dbms_output.put_line('New custId' || ' '  || custId );
--    
--    
--  end loop;
--  
--  dbms_output.put_line('FINAL value of custId' || ' ' || custId);
--  
--end;




----$$$$$$$$$$$$$$$$$$$$$$$$$$$$ FOR LOOP %%%%%%%%%%%%%%%%%%


set SERVEROUTPUT ON;  

declare
  custId number := 20;
  counterVar number ;
  
begin
  for counterVar in 1..custId  loop
  
    dbms_output.put_line('value of custId' || ' ' || custId);
  
  end loop;
  
  dbms_output.put_line('FINAL value of custId' || ' ' || custId);
  
end;

