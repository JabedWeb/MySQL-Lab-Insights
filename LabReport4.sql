CREATE DATABASE BankDB;
USE BankDB;

-- Table: branch
CREATE TABLE branch (
    branch_name VARCHAR(13) PRIMARY KEY,
    branch_city VARCHAR(13),
    assets INT
);

-- Table: customer
CREATE TABLE customer (
    customer_id VARCHAR(13) PRIMARY KEY,
    customer_name VARCHAR(13),
    customer_city VARCHAR(13)
);

-- Table: account
CREATE TABLE account (
    account_number VARCHAR(13) PRIMARY KEY,
    branch_name VARCHAR(13),
    balance INT,
    FOREIGN KEY (branch_name) REFERENCES branch(branch_name)
);

-- Table: loan
CREATE TABLE loan (
    loan_number VARCHAR(13) PRIMARY KEY,
    branch_name VARCHAR(13),
    amount INT,
    FOREIGN KEY (branch_name) REFERENCES branch(branch_name)
);

-- Table: depositor
CREATE TABLE depositor (
    customer_name VARCHAR(13),
    account_number VARCHAR(13),
    FOREIGN KEY (customer_name) REFERENCES customer(customer_name),
    FOREIGN KEY (account_number) REFERENCES account(account_number)
);

-- Table: borrower
CREATE TABLE borrower (
    customer_name VARCHAR(13),
    loan_number VARCHAR(13),
    FOREIGN KEY (customer_name) REFERENCES customer(customer_name),
    FOREIGN KEY (loan_number) REFERENCES loan(loan_number)
);


-- Insert data into branch
INSERT INTO branch (branch_name, branch_city, assets) VALUES 
('MainBranch', 'Dhaka', 1000000);

-- Insert data into customer
INSERT INTO customer (customer_id, customer_name, customer_city) VALUES 
('C001', 'Jabed Hasan', 'Dhaka');

-- Insert data into account
INSERT INTO account (account_number, branch_name, balance) VALUES 
('A001', 'MainBranch', 5000);

-- Insert data into loan
INSERT INTO loan (loan_number, branch_name, amount) VALUES 
('L001', 'MainBranch', 20000);

-- Insert data into depositor
INSERT INTO depositor (customer_name, account_number) VALUES 
('Jabed Hasan', 'A001');

-- Insert data into borrower
INSERT INTO borrower (customer_name, loan_number) VALUES 
('Jabed Hasan', 'L001');



-- Add column Email in customer table
ALTER TABLE customer ADD Email VARCHAR(255);

-- Set value for Email column
UPDATE customer SET Email = 'jabed@example.com' WHERE customer_id = 'C001';

-- Change the name of column customer_city to city
ALTER TABLE customer CHANGE customer_city city VARCHAR(13);

-- Modify the data type of assets column in branch table
ALTER TABLE branch MODIFY assets BIGINT;
