CREATE DATABASE temp1;
USE temp1;

Create table student (
id int primary key,
name varchar(50),
age int not null,
city varchar(50),
marks int not null,
grade varchar(1)
);

insert into student values 
(1, "Kaushal", 21, "Jamnagar", 87, "B"),
(2, "Kashish", 22, "Anand", 89, "B"),
(3, "Kirtan", 21, "Jamnagar", 79, "B"),
(4, "Krunal", 21, "Anand", 87, "B"),
(5, "soham", 22, "Rajkot", 99, "A"),
(6, "sachin", 23, "Surat", 96, "A"),
(7, "jigar", 24, "Rajkot", 70, "C"),
(8, "Karan", 25, "Jamnagar", 77, "C");

-- select * from student where	city In("jamnagar", "Rajkot") and marks > 85; 
-- select * from student where	city not In("jamnagar", "Rajkot") and marks < 90; 

-- select id, name ,marks, marks + 3 as updateMarks from student where marks >90;
-- select id, name ,marks, marks - 10 as updateMarks from student where marks >79;
-- select id, name ,marks, marks * 3 as updateMarks from student where marks >85;
-- select * from student where	marks - 3 > 79;

-- select * from  student where city like 'j%r';
-- select * from  student where city like 'j%r' limit 2;

-- select name from student where marks between 79 and 90;
-- select name from student where marks = 79 or marks = 89; 

select * from student order by city desc limit 3;
-- select * from student order by city limit 3; 


-- drop table student; 