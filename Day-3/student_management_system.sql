CREATE DATABASE StudentDB;
USE StudentDB;

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age >= 18),
    email VARCHAR(100) UNIQUE NOT NULL,
    department VARCHAR(50),
    enrollment_date DATE DEFAULT (CURRENT_DATE)
);

INSERT INTO students (name, age, email, department) VALUES
('Kaushal Patel', 21, 'kaushal@email.com', 'Computer Science'),
('Karan Sharma', 22, 'karan@email.com', 'Mechanical Engineering'),
('Karshan Mehta', 23, 'karshan@email.com', 'Electrical Engineering'),
('Meet Joshi', 20, 'meet@email.com', 'Information Technology'),
('Raj Singh', 21, 'raj@email.com', 'Civil Engineering'),
('Jay Trivedi', 22, 'jay@email.com', 'Computer Science'),
('Aryan Desai', 19, 'aryan@email.com', 'Computer Science'),
('Vivek Shah', 22, 'vivek@email.com', 'Mechanical Engineering'),
('Rohan Patel', 23, 'rohan@email.com', 'Civil Engineering'),
('Neel Bhatt', 21, 'neel@email.com', 'Information Technology'),
('Yash Verma', 20, 'yash@email.com', 'Electrical Engineering');

SELECT * FROM students;

SELECT * FROM students WHERE student_id = 1;

SELECT * FROM students WHERE department = 'Computer Science';

UPDATE students 
SET email = 'yashv@email.com' 
WHERE student_id = 11;

UPDATE students 
SET department = 'Data Science' 
WHERE student_id = 3;

DELETE FROM students WHERE student_id = 2;

SELECT COUNT(*) AS total_students FROM students;


