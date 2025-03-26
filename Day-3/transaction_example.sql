CREATE DATABASE TicketBookingDB;
USE TicketBookingDB;
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    balance DECIMAL(10,2) NOT NULL
);

CREATE TABLE bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    seat_no INT UNIQUE,
    status ENUM('PENDING', 'BOOKED', 'CANCELLED') DEFAULT 'PENDING',
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

INSERT INTO users (name, balance) VALUES ('jeel', 2000.00),
('karan', 500.00);

INSERT INTO bookings (user_id, seat_no, status) VALUES (NULL, 1, 'PENDING');
INSERT INTO bookings (user_id, seat_no, status) VALUES (NULL, 2, 'PENDING');

START TRANSACTION;
UPDATE bookings SET user_id = 1, status = 'BOOKED' WHERE seat_no = 1;
UPDATE users SET balance = balance - 500 WHERE user_id = 1;
COMMIT;

START TRANSACTION;
UPDATE bookings SET user_id = Null, status = 'BOOKED' WHERE seat_no = 2;
UPDATE users SET balance = balance - 600 WHERE user_id = 2;
ROLLBACK;
COMMIT;


START TRANSACTION;

UPDATE bookings SET user_id = 2, status = 'BOOKED' WHERE seat_no = 2;
SAVEPOINT seat_assigned;

UPDATE users SET balance = balance - 500 WHERE user_id = 2;
SAVEPOINT payment_deducted;

ROLLBACK TO SAVEPOINT seat_assigned;

COMMIT;



select * from users;
select * from bookings;

-- drop database TicketBookingDB;


create database kaushal;
drop database kaushal;


