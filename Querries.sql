  
   --List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no,employees.first_name,employees.last_name,employees.sex, salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

    --List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT  e.emp_no,e.first_name,e.last_name, dm.dept_no,d.dept_name
FROM EMPLOYEES AS e 
INNER JOIN dept_manager AS dm 
ON dm.emp_no = e.emp_no

INNER JOIN departments AS d
ON d.dept_no = dm.dept_no
; 

    --List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT  e.emp_no,e.first_name,e.last_name, dm.dept_no,d.dept_name
FROM EMPLOYEES AS e 
INNER JOIN dept_manager AS dm 
ON dm.emp_no = e.emp_no

INNER JOIN departments AS d
ON d.dept_no = dm.dept_no
; 
    --List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT  e.emp_no,e.first_name,e.last_name, demp.dept_no,d.dept_name
FROM EMPLOYEES AS e
INNER JOIN dept_emp AS demp
ON e.emp_no = demp.emp_no

INNER JOIN departments AS d
on d.dept_no = demp.dept_no;

    --List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name,last_name,sex
FROM employees
WHERE first_name='Hercules' AND last_name LIKE '%b%';
--List each employee in the Sales department, including their employee number, last name, and first name.

SELECT  e.emp_no,e.first_name,e.last_name, d.dept_name
FROM EMPLOYEES AS e 
INNER JOIN dept_emp AS de 
ON de.emp_no = e.emp_no

INNER JOIN departments AS d
ON d.dept_no = de.dept_no

WHERE d.dept_name = 'Sales'
ORDER BY emp_no;
 --List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT  e.emp_no,e.first_name,e.last_name, d.dept_name
FROM EMPLOYEES AS e 
INNER JOIN dept_emp AS de 
ON de.emp_no = e.emp_no

INNER JOIN departments AS d
ON d.dept_no = de.dept_no

WHERE d.dept_name = 'Sales' OR d.dept_name ='Development'
ORDER BY emp_no;
 --List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
 SELECT last_name, count(*) AS distinct_names
 FROM EMPLOYEES
 GROUP BY last_name;
 