SELECT e.emp_no, e.emp_title, e.birth_date, e.sex, e.hire_date, s.salaries, d.dept_name
FROM Employees e
JOIN Salaries s 
ON (e.emp_no = s.emp_no)
INNER JOIN Dept_emp de ON (e.emp_no = de.emp_no) 
INNER JOIN Departments d ON (de.dept_no = d.dept_no)