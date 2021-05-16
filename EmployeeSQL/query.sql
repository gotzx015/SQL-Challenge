-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;


-- 2. List first name, last name, and hire date for employees who were hired in 1986

SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date LIKE '%86';


-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
JOIN departments
ON dept_manager.dept_no = departments.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;


-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN departments
ON dept_emp.dept_no = departments.dept_no
JOIN employees
ON dept_emp.emp_no = employees.emp_no;