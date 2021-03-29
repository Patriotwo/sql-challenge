-- 1. List employee details: employee number, last name, first name, sex, and salary 
SELECT empl.emp_no, 
empl.last_name, 
empl.first_name, 
empl.sex, sal.salary
FROM employee AS empl
INNER JOIN salaries AS sal
   ON empl.emp_no = sal.emp_no;

--List the first name, last name, and hire date of employees hired in 1986

SELECT empl.first_name, 
empl.last_name, 
empl.hire_date
FROM employee AS empl
WHERE empl.hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY empl.hire_date ASC;

--List the manger of the manager of each department: department number, department name, the manager's employee number, last name, and first name

SELECT d.dept_no,
d.dept_nam, 
dm.emp_no,
e.first_name,
e.last_name
FROM departments AS d
JOIN dept_manager AS DM
   ON d.dept_no = dm.dept_no
JOIN employee AS e
   ON e.emp_no = dm.emp_no;

--List the department of each employee: employee number, last name first name,  and department name 
 
SELECT de.dept_no, e.last_name, e.first_name, d.dept_nam
FROM dept_emp AS de
JOIN employee AS e
   ON e.emp_no = de.emp_no
JOIN departments AS d
   ON de.dept_no =d.dept_no;

--List the first name, last name, and sex of each emploee whose first name is 'Hercules' and last name begins with 'B'

SELECT first_name, last_name, sex
FROM employee
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List all employees in the sales department: employee number, last name, first name and department name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_nam
FROM employee AS e
JOIN dept_manager as dm
  ON e.emp_no = dm.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
WHERE d.dept_nam = 'Sales';

--List all employees in the sales and development departments: employee number, last name, first name, and department name

SELECT e.emp_no, e.last_name, e.first_name, d.dept_nam
FROM employee AS e
JOIN dept_manager as dm
  ON e.emp_no = dm.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
WHERE d.dept_nam = 'Sales' OR d.dept_nam = 'Development';

--In decending order, list the frequency count of employees that share the same last names

SELECT last_name, COUNT(last_name)
FROM employee
GROUP BY last_name
ORDER BY (COUNT) DESC;


