USE temp1;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_name VARCHAR(100),
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (name, email) VALUES 
('Ajay', 'ajay@example.com'),
('Bharat', 'bharat@example.com'),
('Chetan', 'chetan@example.com');

INSERT INTO orders (customer_id, product_name, amount) VALUES 
(1, 'Laptop', 800.00),
(1, 'Phone', 500.00),
(2, 'Tablet', 300.00);

SELECT customers.customer_id, customers.name, orders.order_id, orders.product_name, orders.amount
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id;

SELECT customers.customer_id, customers.name, orders.order_id, orders.product_name, orders.amount
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id;

SELECT customers.customer_id, customers.name, orders.order_id, orders.product_name, orders.amount
FROM customers
RIGHT JOIN orders ON customers.customer_id = orders.customer_id;

SELECT customers.customer_id, customers.name, orders.order_id, orders.product_name, orders.amount
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id
UNION
SELECT customers.customer_id, customers.name, orders.order_id, orders.product_name, orders.amount
FROM customers
RIGHT JOIN orders ON customers.customer_id = orders.customer_id;

