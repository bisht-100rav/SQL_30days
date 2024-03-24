-- create a table
Create TABLE employees(
    employee_number INTEGER PRIMARY KEY,
    last_name TEXT NOT NULL,
    first_name TEXT NOT NULL,
    salary INTEGER NOT NULL,
    dept_id INTEGER NOT NULL,
    FOREIGN KEY (dept_id) REFERENCES departments (department_id)
);

CREATE TABLE departments (
    department_id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL
);

INSERT INTO employees VALUES(12009, 'Sutherland', 'Barbara', 54000, 45);
INSERT INTO employees VALUES(34974, 'Yates', 'Fred', 80000, 45);
INSERT INTO employees VALUES(34987, 'Erickson', 'Neil', 42000, 45);
INSERT INTO employees VALUES(45001, 'Parker', 'Sally', 57500, 30);
INSERT INTO employees VALUES(75623, 'Gates', 'Steve', 65000, 30);

INSERT INTO departments (department_id, department_name) VALUES
(30, 'Finance'),
(45, 'Human Resources');

-- Total Expenses for Each department

SELECT d.department_name, SUM(e.salary) AS total_salary_expense
FROM employees e
JOIN departments d ON e.dept_id = d.department_id
GROUP BY d.department_name;