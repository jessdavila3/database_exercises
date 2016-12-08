use employees;

select first_name from employees where (first_name = 'Irena'
  or first_name = 'Vidya'
  or first_name = 'Maya')
  AND gender = 'M';

select last_name from employees where last_name LIKE 'E%';

select first_name, last_name from employees where hire_date BETWEEN '1990-01-01' and '1999-12-31';

select first_name, last_name, birth_date from employees where birth_date = '%%%%-12-25';
/*this christmas one is totally wrong, fix later*/

select first_name, last_name from employees where last_name like 'E%'
  or last_name like '%E';

select first_name, last_name from employees where last_name like 'E%'
                                                  and last_name like '%E';

