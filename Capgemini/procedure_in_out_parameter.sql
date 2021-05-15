-- IN OUT parameter   -- we can't give the default value


set serveroutput on;

create or replace procedure data_insert ( v_num IN OUT number  ) 
as 
BEGIN
  v_num := v_num +100;
  dbms_output.put_line(v_num);
  
end;


declare
    v_local_num number  := 500;
begin 
--    data_insert;
    data_insert(v_local_num);
    dbms_output.put_line('Local Value inside calling block  ' || v_local_num);
    
end;