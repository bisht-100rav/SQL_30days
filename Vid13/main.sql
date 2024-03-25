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


--  Get employees whose salary is greater than avg salary

SELECT e.*
from employees e
JOIN(
    SELECT AVG(salary) as avg_salary
    FROM employees
) avg ON e.salary > avg.avg_salary;





