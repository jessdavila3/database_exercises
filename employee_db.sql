use employees;

SELECT DISTINCT dept_name as 'Department Name', concat(e.first_name," ",e.last_name) AS 'Department Manager'
from employees as e
JOIN dept_manager as dm on dm.emp_no = e.emp_no
join departments as d on d.dept_no = dm.dept_no
where dm.to_date > curdate();

SELECT DISTINCT dept_name as 'Department Name', concat(e.first_name," ",e.last_name) AS 'Department Manager'
from employees as e
  JOIN dept_manager as dm on dm.emp_no = e.emp_no
  join departments as d on d.dept_no = dm.dept_no
where e.gender = "F" AND dm.to_date > curdate();

select title as Title, count(de.emp_no) as Count
from titles as t
join dept_emp as de on t.emp_no = de.emp_no
where de.dept_no = "d001"
GROUP BY title; /*this shit DOES NOT FUCKING WORK*/

SELECT dept_name as 'Department Name', concat(e.first_name," ",e.last_name) AS Name, salary as Salary
from employees e
join dept_manager as dm on dm.emp_no = e.emp_no
join departments as d on d.dept_no = dm.dept_no
join salaries as s on dm.emp_no = s.emp_no
where dm.to_date >= curdate();



