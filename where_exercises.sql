use employees;

select first_name from employees where first_name in ('Irena', 'Vidya', 'Maya');

select last_name from employees where last_name LIKE 'E%';

select first_name, last_name from employees where hire_date BETWEEN '1990-01-01' and '1999-12-31';

select first_name, last_name from employees where birth_date = '%%%%-12-25';

select first_name, last_name from employees where last_name like '%q%';
