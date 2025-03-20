CREATE DATABASE FoodDelivery;  
USE FoodDelivery;

CREATE TABLE Customers (
    id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(100), email VARCHAR(100) UNIQUE,
    phone VARCHAR(15), address TEXT
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
);

INSERT INTO Customers (name, email, phone, address) 
VALUES 
('Ajay', 'ajay@email.com', '1234567890', 'New York'),
('Bharat', 'bharat@email.com', '9876543210', 'California');

INSERT INTO Orders (customer_id, amount) 
VALUES 
(1, 25.50), 
(2, 40.75);

SELECT * FROM Customers;  

SELECT name, email FROM Customers;  
SELECT * FROM Orders WHERE amount > 30;  

