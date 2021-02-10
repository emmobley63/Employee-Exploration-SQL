# sql-challenge

Employee Database

We were given six tables with different data about employees and their departments. We first assessed our tables for their relational data and constraints. We built out a database diagram on Quickdatabasediagrams.com. Our txt file for that code is in the sql-challenge/EmployeeSQL folder as a .txt file. We saved the diagram as a PNG to the Images folder in the same address.

We wanted to import the data in SQL from our CSVs. We did so by creating tables that corresponded to the CSV data that we were importing. Once each of our tables were built (schema.sql) we could then import the data and start to analyze it.

Queries (queries.sql)
1- We wanted to pull employee number , last name, first name, sex, and salary. In order to do so, we had to join our Salaries table to our employees table.

2- We wanted each employee's first name, last name and hire date for all employees hired in 1986. We used the Employees table and set parameters from 1/1/1986 to 12/31/1986.

3- We wanted the each of the manager's department number, department name, employee number, last name and first name. Here we had to pull together three tables and INNER JOIN them all. We used dept_manager first to get the list of managers, their department number and employee number. Then we inner joined Departments table on dept_no to get department names. Finally we inner joined the Employees table on the e,p_no to get the manager's first and last names.

4- We wanted all employee's number, last name, first name, and department name. For this we needed to join the three tables. We started with the Employees table to get their number, first name, and last name. To get the department name we had to join Dept_emp to Employees on emp_no. Then to get the actual department name, we joined Departments on dept_no.

5- To get the first name, last name and sex for employees whose first name was "Hercules" and last name started with a "b" we first retrieved first name, last name, ad sex from the Employee table. We then used a WHERE statement to say that the first name must equal "Hercules and a SUBSTRING statement to retrieve the first character in the last name and make sure it was equal to "B"

6- 
