-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	employees.sex, 
	salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no
ORDER BY emp_no;
	
select hire_date
FROM employees

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.first_name,
	employees.last_name,
	employees.hire_date
FROM employees
WHERE DATE_PART ('year',hire_date) = 1986
ORDER BY hire_date;

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT departments.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	employees.last_name,
	employees.first_name
FROM departments
LEFT JOIN dept_manager
USING(dept_no)
LEFT JOIN employees
USING(emp_no)
ORDER BY emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	dept_emp.emp_no,
	departments.dept_name
FROM employees
INNER JOIN dept_emp
USING (emp_no)
INNER JOIN departments
USING(dept_no);


-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT dept_name
FROM departments


SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_no,
	departments.dept_name,
	dept_emp.emp_no
FROM employees
INNER JOIN dept_emp
USING (emp_no)
INNER JOIN departments
USING(dept_no)
WHERE dept_name = 'Sales'
ORDER BY dept_no


-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_no,
	departments.dept_name,
	dept_emp.emp_no
FROM employees
INNER JOIN dept_emp
USING (emp_no)
INNER JOIN departments
USING(dept_no)
WHERE dept_name IN ('Sales', 'Development')
ORDER BY dept_no

-- 8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
SELECT last_name, COUNT(*) AS freq_count
FROM employees
GROUP BY last_name
ORDER BY freq_count DESC;
