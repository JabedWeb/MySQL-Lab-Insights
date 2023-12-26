CREATE DATABASE UniversityDB;
USE UniversityDB;


-- Table 1: Students
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE,
    PRIMARY KEY (StudentID)
);

-- Table 2: Courses
CREATE TABLE Courses (
    CourseID INT AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    Instructor VARCHAR(255),
    PRIMARY KEY (CourseID),
    UNIQUE (Title)
);

-- Table 3: Enrollments
CREATE TABLE Enrollments (
    EnrollmentID INT AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    PRIMARY KEY (EnrollmentID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);



-- Inserting data into Students
INSERT INTO Students (Name, Email) VALUES
('Md Jabed Hossen', 'Jabed@example.com'),
('Akash', 'akash@example.com');

-- Inserting data into Courses
INSERT INTO Courses (Title, Instructor) VALUES
('Database Systems', 'Dr. A. Rahman'),
('Programming Fundamentals', 'Dr. B. Sultana');

-- Inserting data into Enrollments
INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate) VALUES
(1, 1, '2023-01-15'),
(2, 2, '2023-01-18');


-- Browsing Students
SELECT * FROM Students;

-- Browsing Courses
SELECT * FROM Courses;

-- Browsing Enrollments
SELECT * FROM Enrollments;
