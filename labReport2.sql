-- Database Creation
CREATE DATABASE UniversityDB;

-- Table Creation
USE UniversityDB;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Major VARCHAR(50)
);

CREATE TABLE Professors (
    ProfessorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Department VARCHAR(50)
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    Grade CHAR(2)
);

-- Data Insertion
INSERT INTO Students (StudentID, FirstName, LastName, Major) VALUES
(101, 'Rahim', 'Khan', 'Computer Science'),
(102, 'Fatema', 'Chowdhury', 'Biology'),
(103, 'Anika', 'Islam', 'Mathematics'),
(104, 'Asif', 'Rahman', 'Physics'),
(105, 'Tasnim', 'Ahmed', 'Chemistry');


INSERT INTO Professors (ProfessorID, FirstName, LastName, Department) VALUES
(201, 'Nasir', 'Uddin', 'Computer Science'),
(202, 'Laila', 'Khatun', 'Biology'),
(203, 'Mehedi', 'Hasan', 'Mathematics'),
(204, 'Afia', 'Begum', 'Physics'),
(205, 'Jamil', 'Hossain', 'Chemistry');


INSERT INTO Courses (CourseID, CourseName, Department) VALUES
(301, 'Introduction to Programming', 'Computer Science'),
(302, 'General Biology', 'Biology'),
(303, 'Linear Algebra', 'Mathematics'),
(304, 'Fundamentals of Physics', 'Physics'),
(305, 'Organic Chemistry', 'Chemistry');

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(401, 'Computer Science'),
(402, 'Biology'),
(403, 'Mathematics'),
(404, 'Physics'),
(405, 'Chemistry');


INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, Grade) VALUES
(501, 101, 301, 'A'),
(502, 102, 302, 'B'),
(503, 103, 303, 'A'),
(504, 104, 304, 'B'),
(505, 105, 305, 'A');


-- Data Browsing
SELECT * FROM Students;
SELECT * FROM Professors;
SELECT * FROM Courses;
SELECT * FROM Departments;
SELECT * FROM Enrollments;