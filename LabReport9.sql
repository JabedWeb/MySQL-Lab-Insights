CREATE DATABASE GUBDatabase;
USE GUBDatabase;


CREATE TABLE StudentInfo (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(255),
    Address VARCHAR(255),
    Email VARCHAR(255)
);

CREATE TABLE WaiverInfo (
    StudentID INT,
    StudentName VARCHAR(255),
    CGPA DECIMAL(3, 2),
    WaiverPercentage INT,
    FOREIGN KEY (StudentID) REFERENCES StudentInfo(StudentID)
);


INSERT INTO StudentInfo (StudentID, StudentName, Address, Email) VALUES
(1, 'Jabed Hasan', '123 Main St', 'jabed@example.com'),
(2, 'Fahad', '456 Market Rd', 'Fahad@example.com');

INSERT INTO WaiverInfo (StudentID, StudentName, CGPA, WaiverPercentage) VALUES
(1, 'Jabed Hasan', 3.50, 0),
(2, 'Fahad', 3.70, 0);




DELIMITER //
CREATE TRIGGER UpdateWaiver BEFORE INSERT ON WaiverInfo
FOR EACH ROW
BEGIN
    IF NEW.CGPA BETWEEN 3.90 AND 4.00 THEN
        SET NEW.WaiverPercentage = 100;
    ELSIF NEW.CGPA BETWEEN 3.75 AND 3.89 THEN
        SET NEW.WaiverPercentage = 50;
    ELSIF NEW.CGPA BETWEEN 3.50 AND 3.74 THEN
        SET NEW.WaiverPercentage = 25;
    ELSE
        SET NEW.WaiverPercentage = 0;
    END IF;
END//
DELIMITER ;
