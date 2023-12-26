CREATE DATABASE BankDB;
USE BankDB;

-- Table: branch
CREATE TABLE branch (
    branch_name VARCHAR(13) NOT NULL,
    branch_city VARCHAR(13),
    assets INT,
    PRIMARY KEY (branch_name)
);

-- Table: customer
CREATE TABLE customer (
    customer_id VARCHAR(13) NOT NULL,
    customer_name VARCHAR(13) NOT NULL,
    customer_city VARCHAR(13),
    PRIMARY KEY (customer_id),
    UNIQUE (customer_name)
);

-- Table: account
CREATE TABLE account (
    account_number VARCHAR(13) NOT NULL,
    branch_name VARCHAR(13) NOT NULL,
    balance INT NOT NULL,
    PRIMARY KEY (account_number),
    FOREIGN KEY (branch_name) REFERENCES branch(branch_name)
);

-- Table: loan
CREATE TABLE loan (
    loan_number VARCHAR(13) NOT NULL,
    branch_name VARCHAR(13) NOT NULL,
    amount INT NOT NULL,
    PRIMARY KEY (loan_number),
    FOREIGN KEY (branch_name) REFERENCES branch(branch_name)
);

-- Table: depositor
-- Note: 'customer_name' must reference a UNIQUE field in the 'customer' table.
CREATE TABLE depositor (
    customer_name VARCHAR(13) NOT NULL,
    account_number VARCHAR(13) NOT NULL,
    FOREIGN KEY (customer_name) REFERENCES customer(customer_name),
    FOREIGN KEY (account_number) REFERENCES account(account_number)
);

-- Table: borrower
-- Note: 'customer_name' must reference a UNIQUE field in the 'customer' table.
CREATE TABLE borrower (
    customer_name VARCHAR(13) NOT NULL,
    loan_number VARCHAR(13) NOT NULL,
    FOREIGN KEY (customer_name) REFERENCES customer(customer_name),
    FOREIGN KEY (loan_number) REFERENCES loan(loan_number)
);



-- Inserting data into branch
INSERT INTO branch (branch_name, branch_city, assets) VALUES 
('Main', 'Dhaka', 1000000),
('Gulshan', 'Dhaka', 500000),
('Uttara', 'Dhaka', 300000);

-- Inserting data into customer
INSERT INTO customer (customer_id, customer_name, customer_city) VALUES 
('C001', 'Jabed Hasan', 'Dhaka'),
('C002', 'Fahim Hasan', 'Chittagong'),
('C003', 'Rahim Hasan', 'Dhaka');

-- Inserting data into account
INSERT INTO account (account_number, branch_name, balance) VALUES 
('A001', 'Main', 5000),
('A002', 'Main', 15000),
('A003', 'Main', 25000);

-- Inserting data into loan
INSERT INTO loan (loan_number, branch_name, amount) VALUES 
('L001', 'Main', 20000),
('L002', 'Main', 50000),
('L003', 'Main', 10000);

-- Inserting data into depositor
INSERT INTO depositor (customer_name, account_number) VALUES 
('Jabed Hasan', 'A001'),
('Fahim Hasan', 'A002'),
('Rahim Hasan', 'A003');

-- Inserting data into borrower
INSERT INTO borrower (customer_name, loan_number) VALUES 
('Jabed Hasan', 'L001'),
('Fahim Hasan', 'L002'),
('Rahim Hasan', 'L003');


--Primary Key Query
SELECT * FROM customer WHERE customer_id = 'C001';


--Query with Condition
SELECT * FROM loan WHERE amount > 25000;


--Query with Comparison Operation
SELECT * FROM account WHERE balance <> 10000;


--AND, OR, NOT Operators
SELECT * FROM borrower WHERE customer_name = 'Jabed Hasan' OR loan_number = 'L002';


--ORDER BY, ASC, DESC

SELECT * FROM account ORDER BY balance DESC;
SELECT * FROM account ORDER BY balance ASC;


--BETWEEN, NOT BETWEEN, IN, NOT IN
SELECT * FROM loan WHERE amount BETWEEN 10000 AND 30000;
SELECT * FROM loan WHERE amount NOT IN (10000, 20000);


--LIKE Operator
SELECT * FROM customer WHERE customer_name LIKE 'J%';
SELECT * FROM customer WHERE customer_name LIKE '%a%';


