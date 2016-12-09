USE employees;

SELECT DISTINCT
  dept_name                              AS 'Department Name',
  concat(e.first_name, " ", e.last_name) AS 'Department Manager'
FROM employees AS e
  JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
  JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date > curdate();

SELECT DISTINCT
  dept_name                              AS 'Department Name',
  concat(e.first_name, " ", e.last_name) AS 'Department Manager'
FROM employees AS e
  JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
  JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE e.gender = "F" AND dm.to_date > curdate();

SELECT
  title            AS Title,
  count(de.emp_no) AS Count
FROM titles AS t
  JOIN dept_emp AS de ON t.emp_no = de.emp_no
WHERE de.dept_no = "d001"
GROUP BY title;
/*this shit DOES NOT WORK*/

SELECT
  dept_name                              AS "Department Name",
  concat(e.first_name, " ", e.last_name) AS Name,
  salary                                 AS Salary
FROM employees e
  JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
  JOIN departments AS d ON d.dept_no = dm.dept_no
  JOIN salaries AS s ON s.emp_no = dm.emp_no
WHERE dm.to_date = CURDATE();


