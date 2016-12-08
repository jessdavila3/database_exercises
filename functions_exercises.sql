USE employees;

SELECT COUNT(*) AS 'Count',
  gender
FROM employees
WHERE (first_name = 'Irena'
       OR first_name = 'Vidya'
       OR first_name = 'Maya')
GROUP BY gender;

SELECT concat(first_name," ",last_name) AS 'Full Name'
FROM employees
WHERE last_name LIKE 'E%';

SELECT
  first_name,
  last_name
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
ORDER BY birth_date DESC , hire_date ASC ;

SELECT
  first_name,
  last_name
FROM employees
WHERE last_name LIKE 'E%'
      OR last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT
  first_name,
  last_name
FROM employees
WHERE last_name LIKE 'E%'
      AND last_name LIKE '%E'
order by emp_no DESC;

SELECT concat(datediff(curdate(), hire_date)," days") /365 AS 'Days Working'
FROM employees where hire_date LIKE '199%' AND birth_date LIKE '%-12-25';

SELECT birth_date
FROM employees where hire_date LIKE '199%' AND birth_date LIKE '%-12-25'order by birth_date, hire_date DESC;

select count(*) AS repeats, first_name, last_name
from employees
where last_name like '%q%' and not last_name like '%qu%'
GROUP BY first_name, last_name
ORDER BY repeats DESC, first_name, last_name;

