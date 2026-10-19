CREATE TABLE IF NOT EXISTS departments (
dept_id INTEGER PRIMARY KEY,
dept_name TEXT
);

SELECT * FROM departments;

-- Create the employees table (child)
CREATE TABLE IF NOT EXISTS employees (
emp_id INTEGER PRIMARY KEY,
first_name TEXT,
last_name TEXT,
dept_id INTEGER REFERENCES departments(dept_id) -- FK to departments
);
