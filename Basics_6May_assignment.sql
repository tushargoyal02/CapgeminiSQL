-- declaring a variable in PL/SQL

set serveroutput on;

DECLARE
  v_name constant number := 100;

BEGIN
  v_name := 200;
  DBMS_OUTPUT.PUT_LINE(v_name);
end;

/
-- fileName.sql 




--create tabe tablname
--  ( ids number default 10

DECLARE
  v_name varchar(20) DEFAULT 'Hey this is tushar';

BEGIN
  v_name := 'Hey this is GOD!';
  DBMS_OUTPUT.PUT_LINE(v_name);
end;




/* Q1 : -- take two variable number1, number2 with the dataype as number 
-- initalize them inside the begin block & perform arthimetic operation over them


Q2 : Define four variable now with EmId, EmName, EmDept, EmSalary
    - Initliaze the EmId as 103, get all the datatype of variable as same as of the columns of the table employees/emp1
    - fetch the record for the emId which you have set into the variables
    - Print out the data in the format like
      'My name is {Name}, my Id is  {EmpId}, salary is {Salary}'
  
  
Q3 :  You have to add on the value of 50 to department_id & a 15%hike in the salary of people whose 
      - whose name is starting with 'DAVI'
      - Execute the same wuith % TYPE & %ROWTYPE
      
      
Q4:   You have to add on the value of 50 to department_id & a 15%hike in the salary of people whose 
      - whose name is starting with 'DAVI'
      - Execute the same wuith % TYPE 
      - If the salary of the person is greater than 4800 then update the salary to 5000
      otherwise update the salary as 4000 
      -- create a copy of employee table with first 10 record


Q5: Print out the table of any number as given by the user as input
    - format shoudle be number * 1  = number
          2 * 1 =2
          2 * 2 =4
          
Q6: Take a input from the user and try to see the length of characters  april
  - If the length of character is less than 10
    ask again to give input for the varialv
  - and if the condition is true print out the word with the total length of characters
  

Q7 From the employee_cp table try to get the data of the user whose size of email is greater than 5 and empId=103
  - Print out the value of that user like empId, dept_id, salary
  - And afterwards delete that user from the table with its empId;
          
      
Q8 Take two variable & insert the value into the variable from the user input
   - You haveto insert these two record into the table  IDS and NAMES
   - In case the same record is available take one more new value insude the NAMES COLUMN from the user not as same as already taken IN FIRST PART
   - You need to update the recent given value of the user to the table for the same ids of the the IDS column
          

  */