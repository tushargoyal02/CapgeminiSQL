set serveroutput on;

declare

      v_num number := 13;
      
      val_long  exception;
      
      
      pragma EXCEPTION_INIT(val_long, -20000);
      
      
      
BEGIN 
  
      IF v_num >12 then
          raise val_long;
          
          
      end if;
      
      
exception
      when val_long then  
          dbms_output.put_line('value is too big');
        
end;


-- heavy_light_exception  ('sorry nbo data available')  NO_DATA_FOUND