set serveroutput on;

declare 
  v_count number := 0;

begin
  update emp1
    set salary=salary *0.5 
    where employee_id=100;
    
If SQL%Found then
  dbms_output.put_line(SQL%ROWCOUNT);
  
END IF;
  
IF SQL%notfound then
  dbms_output.put_line('Not found');
  
end if;

end;


