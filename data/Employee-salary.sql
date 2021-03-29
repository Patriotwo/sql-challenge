SELECT empl.emp_no, 
empl.last_name, 
empl.first_name, 
empl.sex, sal.salary
FROM employee AS empl
INNER JOIN salaries AS sal
   ON empl.emp_no = sal.emp_no;

SELECT empl.first_name, 
empl.last_name, 
empl.hire_date
FROM employee AS empl
WHERE empl.hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY empl.hire_date ASC;

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
   
 
SELECT de.dept_no, e.last_name, e.first_name, d.dept_nam
FROM dept_emp AS de
JOIN employee AS e
   ON e.emp_no = de.emp_no
JOIN departments AS d
   ON de.dept_no =d.dept_no;


