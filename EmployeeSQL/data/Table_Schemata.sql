-- Create a new table for import, specify column name and data type--
CREATE TABLE departments (
	dept_no VARCHAR NOT NULL,  
	dept_name VARCHAR not null
);

-- Create a new table for import, specify column name and data type--
CREATE TABLE dept_employees (
  emp_no INT not null,
  dept_no VARCHAR not null
);

-- Create a new table for import, specify column name and data type--
CREATE TABLE dept_manager (
  dept_no VARCHAR not null,
  emp_no INT not null
);

-- Create a new table for import, specify column name and data type--
CREATE TABLE employees (
  emp_no INT not null,
  emp_title VARCHAR NOT NULL,
  birth_date DATE NOT NULL,
  first_name VARCHAR,
  last_name VARCHAR,
  sex VARCHAR,
  hire_date DATE NOT NULL
);

-- Create a new table for import, specify column name and data type--
CREATE TABLE salaries (
  emp_no INT not null,
  salary INT
);

-- Create a new table for import, specify column name and data type--
CREATE TABLE titles (
  title_id VARCHAR NOT NULL,
  title VARCHAR NOT NULL
);