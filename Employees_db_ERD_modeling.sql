#  Data Modeling for Employees Database and Documentation
departments
--
# Department number is a primary key, and it is
# aslo found in department employees and department manager list
dept_no VARCHAR PK
# Department names
dept_name VARCHAR

titles
--
# Title id is a primary key,
# and it also found in employees as emp_title_id
title_id VARCHAR PK
# List of titles
title VARCHAR

employees
--
# Employees number is a primary key
# and also found in department employees, department manager
# and salaries list
emp_no INT PK
# Employees have a title id employees(emp_title_id)
# So, this id has relationship with-
# the composite foreign key titles(title_id)
emp_title_id VARCHAR FK >- titles.title_id
# Employees birth date
birth_date DATE
# Employees first name
first_name VARCHAR
# Employees last name
last_name VARCHAR
# Employees sex
sex VARCHAR
# Employees hired date
hire_date DATE

dept_emp
-
# Employees number in department employees list and
# which shared a unique key with employees(emp_no)
emp_no INT FK >- employees.emp_no
# Department number in department employees list and
# which shared a unique key with dept_emp(dept_no)
dept_no VARCHAR FK >- departments.dept_no

dept_manager
--
# Department number in department manger list and
# which shared a unique key with dept_emp(dept_no)
dept_no VARCHAR FK >- departments.dept_no
# Employees number in department manger list and
# which  shared a unique key with employees(emp_no)
emp_no INT FK >- employees.emp_no

salaries
--
# Employees number in salaries and
# which shared unique keys with employees(emp_no)
emp_no INT FK >- employees.emp_no
# Employees salaries
salary INT