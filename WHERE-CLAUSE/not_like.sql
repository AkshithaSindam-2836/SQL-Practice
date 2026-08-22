-- Topic: NOT LIKE
-- Question:
-- Find users whose email does not end with @gmail.com.

-- Create table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100)
);

-- Insert data
INSERT INTO Users (user_id, name, email) VALUES
(1, 'Aarav', 'aarav@gmail.com'),
(2, 'Neha', 'neha@yahoo.com'),
(3, 'Rohan', 'rohan@gmail.com'),
(4, 'Meera', 'meera@outlook.com');

-- Solution
SELECT user_id, name, email
FROM Users
WHERE email NOT LIKE '%@gmail.com';

