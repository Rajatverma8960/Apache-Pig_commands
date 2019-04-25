Salary = LOAD '/home/rajat/Desktop/salary_details' USING PigStorage(' ') 
   as (id:int, name:chararray, salary:int, age:int, area:chararray);
  
Dump Salary;

Employee =LOAD '/home/rajat/Desktop/employee_details.txt' USING PigStorage(' ') 
   as (id:int, name:chararray, age:int, area:chararray);

Dump Employee;

Group_data = GROUP Employee BY age;
Dump Group_data;

Cogroup_data = COGROUP Employee By age, Salary By age;
Dump Cogroup_data;


Join_data = JOIN Employee BY age, Salary by age;
Dump Join_data;

Cross_data = CROSS Employee, Salary;
Dump Cross_data;

Union_data = UNION Employee, Salary;
Dump Union_data;

SPLIT Salary into S1 if age<24, S2 if age>24;
Dump S1;
Dump S2;

Filter_data = FILTER Salary By area=='lucknow';
Dump Filter_data;

Distinct_data= DISTINCT Employee;
Dump Distinct_data;

Foreach_data = FOREACH Salary GENERATE (name,age);
Dump Foreach_data;


	
