-- Create sample table: Employee
CREATE TABLE Employee (
    emp_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT,
    salary INTEGER DEFAULT 30000,
    email TEXT UNIQUE,
    joining_date DATE,
    manager_id INTEGER
);

-- Insert data (with full values)
INSERT INTO Employee (emp_id, name, department, salary, email, joining_date, manager_id)
VALUES 
(1, 'Amit', 'IT', 50000, 'amit@example.com', '2023-01-15', NULL),
(2, 'Rina', 'HR', 40000, 'rina@example.com', '2023-02-10', 1),
(3, 'Suresh', 'Finance', NULL, NULL, NULL, NULL);

-- Insert partial values (remaining will be NULL or default)
INSERT INTO Employee (emp_id, name) VALUES (4, 'Priya');

-- Update salary for employees with NULL salary
UPDATE Employee
SET salary = 35000
WHERE salary IS NULL;

-- Update department of employee with emp_id = 4
UPDATE Employee
SET department = 'Marketing'
WHERE emp_id = 4;

-- Delete employee where name = 'Suresh'
DELETE FROM Employee
WHERE name = 'Suresh';

-- Insert using SELECT (e.g., clone an employee with modifications)
INSERT INTO Employee (emp_id, name, department, salary, email, joining_date, manager_id)
SELECT 5, 'Rina Clone', department, salary, 'clone_rina@example.com', joining_date, manager_id
FROM Employee
WHERE emp_id = 2;

-- Final SELECT to view the data
SELECT * FROM Employee;
