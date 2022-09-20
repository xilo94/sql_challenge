-- Drop table if exists
DROP TABLE departments;


-- Creating departments table
CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT * FROM departments;

-- Drop table if exists
DROP TABLE employees;


-- Creating employees table
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,	
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)

);

SELECT * FROM employees

-- Drop Table if it exist
DROP TABLE dept_emp;

--Creating dept_emp table
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

-- Drop Table if it exist
DROP TABLE dept_manager;

--Creating dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	
);

SELECT * FROM dept_manager;

-- Drop Table if it exist
DROP TABLE salaries;

--Creating salaries table
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	
);

SELECT * FROM salaries;

-- Drop Table if it exist
DROP TABLE titles;

--Creating titles table
CREATE TABLE titles(
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)
	
);

SELECT * FROM titles;