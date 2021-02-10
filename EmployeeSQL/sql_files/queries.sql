SELECT * FROM Departments;

SELECT * FROM Employees;

SELECT * FROM Dept_emp;

SELECT * FROM dept_manager

SELECT * FROM Titles;

SELECT * FROM Salaries;

--1

SELECT e.emp_no, e.last_name, e.first_name, e.sex
FROM Employees e
JOIN Salaries s
ON (e.emp_no = s.emp_no);

--2

SELECT e.first_name, e.last_name, e.hire_date
FROM Employees e
WHERE e.hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--3

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name 
FROM ((Dept_manager dm
INNER JOIN Departments d ON d.dept_no = dm.dept_no)
INNER JOIN Employees e ON e.emp_no = dm.emp_no);

--4

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM ((Employees e
JOIN Dept_emp de ON de.emp_no = e.emp_no)
JOIN Departments d ON d.dept_no = de.dept_no);

--5

SELECT e.first_name, e.last_name, e.sex
FROM Employees e
WHERE e.first_name = 'Hercules' AND
SUBSTRING (e.last_name, 1, 1) = 'B';

--6

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM ((dept_emp de
INNER JOIN Employees e ON e.emp_no = de.emp_no)
INNER JOIN Departments d ON d.dept_no = de.dept_no)
WHERE de.dept_no = 'd007';

--7

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM ((dept_emp de
INNER JOIN Employees e ON e.emp_no = de.emp_no)
INNER JOIN Departments d ON d.dept_no = de.dept_no)
WHERE de.dept_no = 'd007' or de.dept_no = 'd005';

--8

SELECT last_name, COUNT(last_name)
FROM Employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;



