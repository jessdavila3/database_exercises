use employees;

select DISTINCT title
from titles
ORDER BY title asc;

select distinct last_name
from employees
where last_name like '%E' and last_name like 'E%'
group by last_name;

select distinct first_name, last_name
from employees
where last_name like '%E' and last_name like 'E%';

select DISTINCT last_name
from employees
where last_name like '%q%' and not last_name like '%qu%';

