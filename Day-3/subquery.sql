USE temp1;

CREATE TABLE employees3 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    manager_id INT
);

INSERT INTO employees3 (id, name, department, salary, manager_id) VALUES
(1, 'Ajay', 'HR', 50000, NULL),
(2, 'Bharat', 'IT', 60000, 1),
(3, 'Chetan', 'Finance', 70000, 1),
(4, 'Darshit', 'IT', 80000, 2),
(5, 'nevil', 'Finance', 90000, 3);

SELECT name, salary
FROM employees3
WHERE salary > (SELECT AVG(salary) FROM employees3);

SELECT name, department
FROM employees3
WHERE department = (SELECT department FROM employees3 WHERE name = 'Bharat');

SELECT name
FROM employees3
WHERE id IN (SELECT DISTINCT manager_id FROM employees3 WHERE manager_id IS NOT NULL);

SELECT NAME FROM employees3 WHERE ID IN (SELECT manager_id FROM employees3); 

SELECT name FROM employees3 WHERE SALARY = (SELECT max(SALARY) FROM employees3 );

SELECT e1.name AS Employee, e1.salary, e2.name AS Manager, e2.salary AS Manager_Salary
FROM employees3 e1
JOIN employees3 e2 ON e1.manager_id = e2.id
WHERE e1.salary > e2.salary;

SELECT salary FROM employees3 
ORDER BY salary DESC 
LIMIT 1 OFFSET 1;


SELECT * FROM employees3;

-- drop table employees3;