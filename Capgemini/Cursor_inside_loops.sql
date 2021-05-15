-- checkign the implicit cursor with working with for loop  [Proof]
set serveroutput on;

declare
  cursor dept_ext is select * from dept_cp;

BEGIN
  for dept_cur in dept_ext  
    LOOP
      
        DBMS_OUTPUT.put_line('print out the number of rows' || ' '  ||sql%rowcount);
        DBMS_OUTPUT.put_line('print out the number of rows' || ' '  ||dept_ext%rowcount);
        
    end loop;
    
    
end;