CREATE DATABASE StudentDB2;
USE StudentDB2;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age >= 17), -- Changed age restriction
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(15) UNIQUE, -- Added phone number column
    department VARCHAR(50),
    cgpa DECIMAL(3,2) CHECK (cgpa BETWEEN 0 AND 10), -- Added CGPA column
    enrollment_date DATE DEFAULT (CURRENT_DATE)
);

INSERT INTO students (name, age, email, phone_number, department, cgpa) VALUES
('Virat Kohli', 21, 'virat@email.com', '9876543210', 'Computer Science', 9.2),
('MS Dhoni', 22, 'dhoni@email.com', '9876543211', 'Mechanical Engineering', 8.5),
('Sachin Tendulkar', 23, 'sachin@email.com', '9876543212', 'Sports Science', 9.8),
('Rohit Sharma', 20, 'rohit@email.com', '9876543213', 'Information Technology', 8.9),
('Hardik Pandya', 21, 'hardik@email.com', '9876543214', 'Civil Engineering', 7.6),
('Jasprit Bumrah', 22, 'bumrah@email.com', '9876543215', 'Computer Science', 9.1),
('Shubman Gill', 19, 'shubman@email.com', '9876543216', 'Computer Science', 8.2),
('Ravindra Jadeja', 22, 'jadeja@email.com', '9876543217', 'Mechanical Engineering', 7.9),
('KL Rahul', 23, 'rahul@email.com', '9876543218', 'Civil Engineering', 8.3),
('Yuzvendra Chahal', 21, 'chahal@email.com', '9876543219', 'Information Technology', 8.7),
('Bhuvneshwar Kumar', 20, 'bhuvi@email.com', '9876543220', 'Electrical Engineering', 7.8);

SELECT * FROM students;

SELECT * FROM students WHERE student_id = 1;

SELECT * FROM students WHERE department = 'Computer Science';

UPDATE students 
SET email = 'test@gmail.com' 
WHERE student_id = 4;

UPDATE students 
SET department = 'Data Science' 
WHERE student_id = 3;

DELETE FROM students WHERE student_id = 2;
Drop table students;

SELECT COUNT(*) AS total_students FROM students;
