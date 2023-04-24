CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR NOT NULL
);

CREATE TABLE employees(
	emp_no INT  PRIMARY KEY,
	emp_title VARCHAR ,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	CONSTRAINT employees_to_titles
	FOREIGN KEY(emp_title)
	REFERENCES titles(title_id)
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary VARCHAR NOT NULL,
CONSTRAINT salaries_to_employees
	FOREIGN KEY(emp_no)
	REFERENCES employees(emp_no)
);
CREATE TABLE departments(
dept_no VARCHAR NOT NULL PRIMARY KEY,
dept_name VARCHAR NOT NULL
);

CREATE TABLE dept_emp(
	emp_no int NOT NULL,
	dept_no VARCHAR NOT NULL,
CONSTRAINT dept_emp_to_departments 
	FOREIGN KEY(dept_no)
	REFERENCES departments(dept_no),

CONSTRAINT dept_emp_to_employee
	FOREIGN KEY(emp_no)
	REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
CONSTRAINT dept_manager_to_departments
	FOREIGN KEY(dept_no)
	REFERENCES departments(dept_no),
CONSTRAINT dept_manager_to_employees
	FOREIGN KEY(emp_no)
	REFERENCES employees(emp_no)
	);
