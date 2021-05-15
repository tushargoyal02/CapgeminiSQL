select * from emp1;



-- implicit cursor


set SERVEROUTPUT ON;


declare
  -- variable declaration
  v_rowAffect number :=0;
  
  
begin
    -- written the query to update salary to half for department as 90
    update emp1
    set salary = salary *0.5
    where department_id=120;
    
    
  If sql%found then
      dbms_output.put_line('Number of rows affected' || ' ' || sql%rowcount);
    
   
  
  ELSIF sql%NOTfound then
    dbms_output.put_line('Number of rows affected' || ' ' || sql%rowcount);

   
   
  end if; 
end;
  
  
  
rollback;