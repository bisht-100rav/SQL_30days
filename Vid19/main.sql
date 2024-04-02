CREATE TABLE Employee (
    emp_id INTEGER PRIMARY KEY AUTOINCREMENT,
    emp_name TEXT NOT NULL,
    join_date DATE NOT NULL
);

INSERT INTO Employee (emp_name, join_date) VALUES
('John Doe', '2024-02-15'),
('Jane Smith', '2024-03-10'),
('Alice Johnson', '2024-01-05'),
('Bob Williams', '2024-03-01'),
('Michael Brown', '2024-02-20'),
('Emma Davis', '2024-03-05'),
('William Wilson', '2024-01-15'),
('Olivia Taylor', '2024-03-03'),
('James Martinez', '2024-02-01'),
('Sophia Anderson', '2024-03-20'),
('David Miller', '2024-01-10'),
('Isabella Thomas', '2024-03-08'),
('Alexander Jackson', '2024-01-25'),
('Emily White', '2024-03-15'),
('Daniel Harris', '2024-02-05'),
('Mia Martinez', '2024-03-12'),
('Joseph Rodriguez', '2024-01-20'),
('Charlotte Lopez', '2024-03-02'),
('Samuel Adams', '2024-01-08'),
('Abigail Thompson', '2024-03-18');

-- Ret data of employees who joined in the last two months


SELECT *
FROM Employee
WHERE join_date >= DATE('now', '-2 months')
    AND join_date < DATE('now')
ORDER BY join_date;
















