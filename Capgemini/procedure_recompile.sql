insert into testin1 values(11);
desc testin1;

-- creating procedure
create or replace  procedure msg_print as
begin
    delete testin1;
end;


-- calling procedure
begin
      msg_print;
      
end;
    
-- making changes in the structure of the table
alter table testin1 modify (ids number(22) );

select * from testin1;
-- recompile the procedure
alter procedure MSG_PRINT compile;
-- 

-- getting the status of procedure
select object_name,status from user_objects;