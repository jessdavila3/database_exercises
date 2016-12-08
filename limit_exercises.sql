use employees;

select DISTINCT last_name
from employees
GROUP BY last_name DESC
LIMIT 10 OFFSET 0;