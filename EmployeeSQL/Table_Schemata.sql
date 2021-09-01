-- Create a new table for import, specify column name and data type--
CREATE TABLE departments (
    dept_no VARCHAR (6) NOT NULL,
    dept_name VARCHAR (20) NOT NULL,
--set primary key--
    PRIMARY KEY (dept_no)
);

-- Create a new table for import, specify column name and data type--
CREATE TABLE dept_employees (
    emp_no INT NOT NULL,
    dept_no VARCHAR NOT NULL,
--set Foreign Keys--
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- Create a new table for import, specify column name and data type--
CREATE TABLE dept_manager (
    dept_no VARCHAR (6) NOT NULL,
    emp_no integer NOT NULL,
--set Foreign Keys--
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    FOREIGN KEY (emp_no)  REFERENCES employees (emp_no)
);

-- Create a new table for import, specify column name and data type--
CREATE TABLE employees (
    emp_no integer NOT NULL,
    emp_title VARCHAR NOT NULL,
    birth_date date NOT NULL,
    first_name VARCHAR (30),
    last_name VARCHAR (30),
    sex VARCHAR (1),
    hire_date DATE NOT NULL,
--set Primary Key--
    PRIMARY KEY (emp_no),
--set Foreign Key--
    FOREIGN KEY (emp_title) REFERENCES titles (title_id) 
);

-- Create a new table for import, specify column name and data type--
CREATE TABLE salaries (
    emp_no integer NOT NULL,
    salary integer,
--set Foreign Key--
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- Create a new table for import, specify column name and data type--
CREATE TABLE titles (
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
--set primary key--
    PRIMARY KEY (title_id)
);

