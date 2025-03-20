CREATE DATABASE IF NOT EXISTS temp1;
USE temp1;

CREATE TABLE employee2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(30) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    joining_date DATE NOT NULL
);

INSERT INTO employee2 (name, department, salary, joining_date) VALUES
('Karan', 'Sales', 6000, '2022-01-10'),
('Kaushal', 'IT', 7500, '2021-05-20'),
('Kirtan', 'Sales', 5200, '2023-03-15'),
('Sachin', 'HR', 4800, '2022-09-01'),
('Soham', 'IT', 6800, '2023-07-01'),
('Raj', 'Sales', 5900, '2024-01-01'),
('Rohan', 'Finance', 7100, '2023-06-12'),
('Monil', 'IT', 8000, '2021-02-15');

SELECT * FROM employee2;

SELECT * FROM employee2
WHERE salary > 6000;

SELECT department, AVG(salary) AS avg_salary
FROM employee2
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM employee2
GROUP BY department
HAVING avg_salary > 6000;

SELECT department, COUNT(*) AS employee_count
FROM employee2
GROUP BY department
HAVING employee_count > 2;

SELECT * FROM employee2
ORDER BY salary DESC
LIMIT 3 OFFSET 1;

SELECT * FROM employee2
WHERE department IN ('Sales', 'IT');

SELECT * FROM employee2
WHERE salary BETWEEN 5000 AND 7000;

SELECT * FROM employee2
WHERE name LIKE 'K%';

SELECT department, AVG(salary) AS avg_salary
FROM employee2
WHERE salary > 5000
GROUP BY department
HAVING avg_salary > 6000
ORDER BY avg_salary DESC
LIMIT 3 OFFSET 1;

