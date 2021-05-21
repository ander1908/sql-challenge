-- #### Data Analysis

-- Once you have a complete database, do the following:

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
--Select with dot notation table.column
--We need both employees and salaries tables
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees
--Join both tables on FK emp_no
left join salaries
on employees.emp_no = salaries.emp_no;
-- 2. List first name, last name, and hire date for employees who were hired in 1986.
-- we need employees
select employees.first_name, employees.last_name, employees.hire_date
from employees
-- limit search in hire date (between is inclusive) https://www.w3schools.com/sql/trysql.asp?filename=trysql_op_between
-- remember "" for columns...for data single apostrophe ''
where hire_date between '1986-01-01' and '1987-12-31';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
--We need employees and departments and department manager
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from dept_manager
--joining on FK emp no -> inner join
inner join employees
--joining on FK emp no -> inner join
inner join departments
on dept_manager.dept_no = departments.dept_no;
-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
--we need dept_emp employees and departments
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
--join on FK emp_no
inner join employees
on dept_emp.emp_no = employees.emp_no
-- join on FK dept_no
inner join departments
on dept_emp.dept_no = dept_emp.dept_no;
-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
--we need employees
select employees.first_name, employees.last_name, employees.sex
from employees
-- for beginw ith b use like
where first_name = 'Hercules' and last_name like 'B%';
-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

