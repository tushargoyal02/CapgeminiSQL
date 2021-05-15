-- Nested cursor

select * 
  from employees emp,
        departments dept
          where emp.department_id=dept.department_id;
          
set serveroutput on;
declare
  cursor get_emp is
    SELECT employee_id, first_name,
        CURSOR (select department_name 
                  from departments
                      where employees.department_id=departments.department_id)
                      
                    from employees;
                    

      v_employee_id number;
      v_first_name varchar2(20);
      v_department_curs SYS_REFCURSOR;
      v_department_name varchar(20);
      
      
BEGIN
    open get_emp;
    
    fetch get_emp into v_employee_id,
                        v_first_name,
                        v_department_curs;
              
    DBMS_OUTPUT.PUT_LINE(v_employee_id || ' '|| v_first_name);
    
    
    LOOP
      FETCH v_department_curs into v_department_name;
      EXIT when v_department_curs%NOTFOUND;
      
      DBMS_OUTPUT.PUT_LINE('- ' || v_department_name);
      
    END LOOP;
    
    close  get_emp; 
      
END;
      
    