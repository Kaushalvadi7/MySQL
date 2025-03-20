USE temp1;
CREATE TABLE employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT
);

ALTER TABLE Employees ADD COLUMN Salary DECIMAL(10, 2);

insert into employees values(1, "kaushal" , 21, 35000.00);
insert into employees values(2, "karan" , 31, 39000.00);
insert into employees values(3, "keshav" , 22, 33000.00);
insert into employees values(4, "kiran" , 23, 31000.00);

select * from employees;

