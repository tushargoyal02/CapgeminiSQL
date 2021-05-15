-- passing parameter to the procedure
-- IN , out, INOUT
set serveroutput on;

create or replace procedure data_insert ( v_num IN number := '2000'   ) 
as 
BEGIN
  dbms_output.put_line(v_num);
  
end;


begin 
    data_insert;
    data_insert(100);
end;