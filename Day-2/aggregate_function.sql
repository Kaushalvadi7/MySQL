CREATE DATABASE IF NOT EXISTS temp1;
USE temp1;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    subject VARCHAR(50) NOT NULL,
    score INT NOT NULL
);

INSERT INTO students (name, subject, score) VALUES
('Karan', 'Math', 85),
('Kaushal', 'Science', 70),
('Kirtan', 'Math', 92),
('Sachin', 'English', 60),
('Soham', 'Science', 82),
('Raj', 'Math', 55),
('Rohan', 'English', 75),
('Monil', 'Science', 90);

INSERT INTO students (name, subject, score) VALUES
('test', 'Math', 85);

update students set name = "somil" where name ="Monil"; 

set sql_safe_updates =0;
delete from students where name = "test" ;
select * from students;


-- alter table students add column test_mark int default 0;
-- alter table students change column test_mark test_sci_marks int default 0;
-- alter table students drop column test_sci_marks;

SELECT SUM(score) AS total_score FROM students;

SELECT subject, AVG(score) AS avg_score
FROM students
GROUP BY subject;

SELECT subject, COUNT(*) AS student_count
FROM students
GROUP BY subject;

SELECT subject, AVG(score) AS avg_score
FROM students
GROUP BY subject
HAVING avg_score > 75;

SELECT subject, COUNT(*) AS student_count
FROM students
GROUP BY subject
HAVING student_count > 2;

SELECT subject, MAX(score) AS highest_score
FROM students
GROUP BY subject;

SELECT name, SUM(score) AS total_score
FROM students
WHERE score > 70
GROUP BY name;

SELECT subject, AVG(score) AS avg_score
FROM students
GROUP BY subject
HAVING avg_score < 65;

SELECT subject, COUNT(*) AS student_count
FROM students
WHERE score > 60
GROUP BY subject;

SELECT name, SUM(score) AS total_score
FROM students
GROUP BY name
ORDER BY total_score DESC;
