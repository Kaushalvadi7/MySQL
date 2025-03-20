USE temp1;

CREATE TABLE teacher (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50)
);

ALTER TABLE student ADD COLUMN email VARCHAR(100);

ALTER TABLE student MODIFY COLUMN marks FLOAT;

RENAME TABLE student TO students;

DROP TABLE teacher;

INSERT INTO students (id, name, age, city, marks, grade, email) 
VALUES 
(9, "Rahul", 23, "Ahmedabad", 85, "B", "rahul@example.com"),
(10, "Priya", 22, "Vadodara", 92, "A", "priya@example.com");

UPDATE students 
SET marks = 95, grade = "A";

DELETE FROM students;

SELECT * FROM students;

SELECT name, marks FROM students;

SELECT DISTINCT city FROM students;

DROP TABLE teacher;
