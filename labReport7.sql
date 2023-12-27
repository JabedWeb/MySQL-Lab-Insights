CREATE DATABASE BusinessDB;

USE BusinessDB;


CREATE TABLE employees (
    EMPLOYEE_ID INT,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    EMAIL VARCHAR(100),
    PHONE_NUMBER VARCHAR(20),
    HIRE_DATE DATE,
    JOB_ID VARCHAR(50),
    SALARY DECIMAL(8, 2),
    COMMISSION_PCT DECIMAL(5, 2),
    MANAGER_ID INT,
    DEPARTMENT_ID INT,
    PRIMARY KEY (EMPLOYEE_ID)
);

INSERT INTO employees (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID) VALUES
(100, 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17', 'AD_PRES', 24000.00, 0.00, 100, 90),
(101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '1987-06-18', 'AD_VP', 17000.00, 0.00, 100, 90),
-- Add more rows as needed, following the format above.
(133, 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', '1987-07-20', 'ST_CLERK', 3300.00, 0.00, 122, 50),

(134,'Akash','Kumar','AKUMAR','650.127.1935','1987-07-21','ST_CLERK',3300.00,0.00,122,50),

(135,'Amar','Kumar','AKUMAR','650.127.1936','1987-07-22','ST_CLERK',3300.00,0.00,122,50),

(136,'Amit','Kumar','AKUMAR','650.127.1937','1987-07-23','ST_CLERK',3300.00,0.00,122,50),

(137,'Aman','Kumar','AKUMAR','650.127.1938','1987-07-24','ST_CLERK',3300.00,0.00,122,50),

(138,'Alok','Kumar','AKUMAR','650.127.1939','1987-07-25','ST_CLERK',3300.00,0.00,122,50),

(139,'Arun','Kumar','AKUMAR','650.127.1940','1987-07-26','IT_PROG',3300.00,0.00,122,50),

(140,'Avinash','Kumar','AKUMAR','650.127.1941','1987-07-27','IT_PROG',3300.00,0.00,122,50),

(141,'Ankit','Kumar','AKUMAR','650.127.1942','1987-07-28','IT_PROG',3300.00,0.00,122,50),

(142,'Anil','Kumar','AKUMAR','650.127.1943','1987-07-29','IT_PROG',3300.00,0.00,122,50),

(143,'Anshu','Kumar','AKUMAR','650.127.1944','1987-07-30','IT_PROG',3300.00,0.00,122,50),

(144,'Anshul','Kumar','AKUMAR','650.127.1945','1987-07-31','IT_PROG',3300.00,0.00,122,50),

(145,'Anshika','Kumar','AKUMAR','650.127.1946','1987-08-01','IT_PROG',3300.00,0.00,122,50),

(146,'Ansh','Kumar','AKUMAR','650.127.1947','1987-08-02','IT_PROG',3300.00,0.00,122,50),

(147,'Anshu','Kumar','AKUMAR','650.127.1948','1987-08-03','IT_PROG',3300.00,0.00,122,50),

(148,'Anshul','Kumar','AKUMAR','650.127.1949','1987-08-04','IT_PROG',3300.00,0.00,122,50),

(149,'Anshika','Kumar','AKUMAR','650.127.1950','1987-08-05','IT_PROG',3300.00,0.00,122,50),

(150,'Ansh','Kumar','AKUMAR','650.127.1951','1987-08-06','IT_PROG',3300.00,0.00,122,50),





--To list the number of jobs available in the employees table:
SELECT COUNT(DISTINCT JOB_ID) FROM employees;

--To get the minimum salary from the employees table:
SELECT MIN(SALARY) FROM employees;

--To get the maximum salary of an employee working as a Programmer:
SELECT MAX(SALARY) FROM employees WHERE JOB_ID = 'IT_PROG';


--To get the average salary for each job ID excluding programmer:
SELECT JOB_ID, AVG(SALARY) FROM employees WHERE JOB_ID != 'IT_PROG' GROUP BY JOB_ID;