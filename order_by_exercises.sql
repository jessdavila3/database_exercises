USE employees;

SELECT
  first_name,
  last_name
FROM employees
WHERE (first_name = 'Irena'
       OR first_name = 'Vidya'
       OR first_name = 'Maya')
      AND gender = 'M'
ORDER BY last_name, first_name;

SELECT last_name
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
  last_name,
  birth_date
FROM employees
WHERE birth_date = '%%%%-12-25';
/*this christmas one is totally wrong, fix later*/

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

SELECT *
FROM employees where hire_date LIKE '199%' AND birth_date LIKE '%-12-25'order by birth_date, hire_date DESC;
