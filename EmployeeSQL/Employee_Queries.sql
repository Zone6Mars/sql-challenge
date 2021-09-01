--Query 1--
--select desired columns from desired tables: employee table and salaries table--
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
--left join to combine desired salary data from the salaries table for each employee--
--based on employee number--
from employees
left join salaries on employees.emp_no = salaries.emp_no;

--Query 2--
--select desired table, employees--
select * from employees;
--select desired columns from desired tables: employee table and salaries table--
select first_name, last_name, hire_date
from employees
--use where clause to apply within employees table, the hire_date column = between Jan 1 1986 and Jan 31 1986--
where hire_date between '1986/1/1' and '1986/12/31';

--Query 3--
--select desired columns from desired tables: departments, dept_manager, employees--
select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
--left join to combine desired dept_manager data from the dept_manager table based on department number--
--and desired employee data from the employee table and employee number--
--for each department--
from departments
left join dept_manager on departments.dept_no = dept_manager.dept_no
left join employees on dept_manager.emp_no = employees.emp_no;

--Query 4--
--select desired columns from desired tables: departments, employees--
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
--left join to combine desired department data from the department table based on department number--
--and desired employee data from the employee table based on employee number--
--for each dept_employee row--
from dept_employees
left join departments on dept_employees.dept_no = departments.dept_no
left join employees on dept_employees.emp_no = employees.emp_no;

--Query 5--
--select desired table, employees--
select * from employees;
--select desired columns from desired tables: employee table--
select employees.first_name, employees.last_name, employees.sex
from employees
--use where clause to apply within the employees table, the first_name column = 'Hercules',--
--adding the 'and' operator includes the last_name column of the 'like' operator 'B%'
--the wildcard % after the B would return all entries in the last_name column that begin with B
where employees.first_name = 'Hercules' and employees.last_name like 'B%';

--Query 6--
--select desired columns from desired tables: departments, employees--
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
--left join to combine desired department data from the department table based on department number--
--and desired employee data from the dept_employees table based on employee number--
--for each employee--
from employees 
left join dept_employees on employees.emp_no = dept_employees.emp_no
left join departments on dept_employees.dept_no = departments.dept_no
--use where clause to apply within departments table, the dept_name = 'Sales'--
where departments.dept_name = 'Sales';

--Query 7--
--select desired columns from desired tables: departments, employees--
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
from employees
--left join to combine desired employee data from the dept_employees table based on employee number--
--and desired department data from the department table based on department number--
--for each employee--
left join dept_employees on employees.emp_no = dept_employees.emp_no
left join departments on dept_employees.dept_no = departments.dept_no
--use where clause combined with the 'or' operator to apply within departments table,--
--the dept_name = 'Sales' or the dept_name = 'Development'--
where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

--Query 8--
--using count(*) returns the number of rows in the last_name column--
-- of the query--
select last_name, count(*)
--use the 'as' command to assign a new name temporarily to a column of the query--
as "last_name_count"
--group by to combine data for unique entries from the employees table based on last_name--
--for each employee--
from employees
group by last_name
--order by and desc to order the query by the temporary query 
--column "last_name_count" in decending order"--
order by "last_name_count" desc;