-- 1) List the following details of each employee: employee number, last name, first name, sex, and salary

select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from "employees" as e
join "salaries" as s
	on e.emp_no = s.emp_no;

-- 2) List first name, last name, and hire date for employees who were hired in 1986

select e. emp_no, e.first_name, e.last_name, e.hire_date
from "employees" as e
where e.hire_date between '1986-01-01' and '1986-12-31'
order by e.hire_date Asc;

-- 3) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select m.dept_no, m.emp_no, d.dept_name, e.first_name, e.last_name, e.emp_title
from "dept_manager" as m
join "departments" as d
	on m.dept_no = d.dept_no
join "employees" as e
	on m.emp_no = e.emp_no
join "titles" as t
	on e.emp_title = t.title_id
where t.title = 'Manager';


-- 4) List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from "employees" as e
join "dept_emp" as de
	on e.emp_no = de.emp_no
join "departments" as d
	on de.dept_no = d.dept_no;

-- 5) List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select *
from "employees" as e
where first_name = 'Hercules'
	and last_name Like 'B%';

-- 6) List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from "employees" as e
join "dept_emp" as de
	on e.emp_no = de.emp_no
join "departments" as d
	on de.dept_no = d.dept_no
where d.dept_name = 'Sales';

-- 7) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from "employees" as e
join "dept_emp" as de
	on e.emp_no = de.emp_no
join "departments" as d
	on de.dept_no = d.dept_no
Where d.dept_name = 'Sales' or d.dept_name = 'Development';

-- 8) In descending order, list the frequency count of employee last names, i.e., how many employees hsare each last name.
select last_name, count(last_name) as "last_name_freq"
from "employees" as e
group by last_name
order by "last_name_freq" desc;














