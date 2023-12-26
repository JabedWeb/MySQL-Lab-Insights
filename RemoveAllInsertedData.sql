-- Disable foreign key checks to avoid constraint violations during deletion
SET FOREIGN_KEY_CHECKS = 0;

-- Delete data from child tables first
DELETE FROM depositor;
DELETE FROM borrower;
DELETE FROM loan;
DELETE FROM account;

-- Then delete data from parent tables
DELETE FROM customer;
DELETE FROM branch;

-- Re-enable foreign key checks to enforce referential integrity for subsequent operations
SET FOREIGN_KEY_CHECKS = 1;
