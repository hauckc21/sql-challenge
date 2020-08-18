departments
-
dept_no VARCHAR(255)PK
dept_name VARCHAR(255)

dept_emp
-
emp_no Int PK FK >-< employees.emp_no
dept_no VARCHAR(255) PK FK >-< departments.dept_no

dept_manager
-
dept_no VARCHAR(255) PK FK >-< departments.dept_no
emp_no int FK >-< employees.emp_no

employees
-
emp_no Int PK
emp_title VARCHAR(255)
birth_date Date
first_name VARCHAR(255)
last_name VARCHAR(255)
sex VARCHAR(255)
hire_date Date

salaries
-
emp_no Int PK FK - employees.emp_no
salary Int

titles
-
title_id Int PK FK >-< employees.emp_title
title VARCHAR(255)




