-- Topic: NOT BETWEEN
-- Question: Find employees whose salary is not between 30000 and 80000.

-- Create table 
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

-- Insert data
INSERT INTO Employees VALUES
(1, 'Aarav', 25000),
(2, 'Neha', 30000),
(3, 'Rohan', 50000),
(4, 'Meera', 85000);

-- Solution
SELECT emp_id, name, salary
FROM Employees
WHERE salary NOT BETWEEN 30000 AND 80000;
