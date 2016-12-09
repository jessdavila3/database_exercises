use employees;

SELECT concat(last_name,", ",first_name) as full_name
from employees
limit 10 offset 0;

SELECT concat(employees.emp_no," - ",last_name,", ",first_name) as full_name, birth_date as DOB
from employees
limit 10 offset 0;