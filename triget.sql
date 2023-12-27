create database lab9;

use lab9;

CREATE TABLE
    student(
        student_name VARCHAR(20),
        student_id INT,
        Marks INT,
        CGPA DOUBLE
    );

CREATE TRIGGER STUDENT_INFO BEFORE INSERT ON STUDENT 
FOR EACH ROW BEGIN IF 
	NEW.marks > 79 THEN SET NEW.CGPA = 4.00;
	ELSEIF NEW.marks > 74 THEN SET NEW.CGPA = 3.75;
	ELSEIF NEW.marks > 69 THEN SET NEW.CGPA = 3.50;
	ELSEIF NEW.marks > 64 THEN SET NEW.CGPA = 3.25;
	ELSEIF NEW.marks > 60 THEN SET NEW.CGPA = 3.00;
	ELSEIF NEW.marks > 54 THEN SET NEW.CGPA = 2.75;
	ELSE SET NEW.CGPA = 2.00;
	END IF;
	END;
	INSERT into
	    student(
	        student_name,
	        student_id,
	        Marks
	    )
	VALUES ("Rifat", 178, 83), ("Priyo", 177, 78), ("Ashfak", 179, 67), ("Sahida", 158, 59);
	SELECT * from student