
CREATE DATABASE  sales_db;

USE sales_db;

-- Create 'orders' table
CREATE TABLE  orders (
    ord_no INT PRIMARY KEY,
    purch_amt DECIMAL(10, 2) NOT NULL,
    ord_date DATE NOT NULL,
    customer_id INT NOT NULL,
    salesman_id INT NOT NULL
);

-- Create 'customer' table
CREATE TABLE  customer (
    customer_id INT PRIMARY KEY,
    cust_name VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    grade INT NOT NULL,
    salesman_id INT NOT NULL
);

-- Create 'salesman' table
CREATE TABLE  salesman (
    salesman_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    commission DECIMAL(4, 2) NOT NULL
);

-- Insert data into 'orders' table
INSERT INTO orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES
(70001, 150.50, '2012-10-05', 3005, 5002),
(70009, 276.50, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
-- ... other orders ...

-- Insert data into 'customer' table
INSERT INTO customer (customer_id, cust_name, city, grade, salesman_id) VALUES
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
-- ... other customers ...

-- Insert data into 'salesman' table
INSERT INTO salesman (salesman_id, name, city, commission) VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
-- ... other salesmen ...




-- Write a SQL statement to find the details of a order i.e. order number, order date, amount of order, which
-- customer gives the order and which salesman works for that customer and commission rate he gets for an order.

SELECT
    ord_no,
    ord_date,
    purch_amt,
    cust_name,
    name,
    commission
FROM
    orders
        INNER JOIN
    customer ON orders.customer_id = customer.customer_id
        INNER JOIN
    salesman ON orders.salesman_id = salesman.salesman_id


--Write a SQL statement to make a list in ascending order for the customer who works either through a salesman or by own.

SELECT
    cust_name
FROM
    customer
        LEFT JOIN
    salesman ON customer.salesman_id = salesman.salesman_id
ORDER BY cust_name ASC;