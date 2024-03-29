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

INSERT INTO employees VALUES(12009, 'Sutherland', 'Barbara', 
    54000, 45);
INSERT INTO employees VALUES(34974, 'Yates', 'Fred', 
    80000, 45);
INSERT INTO employees VALUES(34987, 'Erickson', 'Neil', 
    42000, 45);
INSERT INTO employees VALUES(45001, 'Parker', 'Sally', 
    57500, 30);
INSERT INTO employees VALUES(75623, 'Gates', 'Steve', 
    65000, 30);

INSERT INTO departments (department_id, department_name) VALUES
(30, 'Finance'),
(45, 'Human Resources');

-- Add another table positions

CREATE TABLE employee_positions (
    employee_number INTEGER,
    department_id INTEGER,
    position_name TEXT,
    PRIMARY KEY (employee_number, department_id),
    FOREIGN KEY (employee_number) 
    REFERENCES employees (employee_number),
    FOREIGN KEY (department_id) 
    REFERENCES departments (department_id)
);

INSERT INTO employee_positions (employee_number, department_id, position_name) VALUES
(12009, 45, 'HR Manager'),
(34974, 45, 'HR Specialist'),
(34987, 45, 'HR Assistant'),
(45001, 30, 'Financial Analyst'),
(75623, 30, 'Finance Manager');

-- Ret information for employees who hold management positions

SELECT e.employee_number, e.first_name, e.last_name,
    d.department_name, ep.position_name, e.salary
FROM employees e
JOIN employee_positions ep ON e.employee_number = ep.employee_number
JOIN departments d ON ep.department_id = d.department_id
WHERE ep.position_name LIKE '%Manager%'
ORDER BY d.department_name;























