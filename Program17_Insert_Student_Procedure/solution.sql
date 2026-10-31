USE CollegeDB;
CREATE TABLE IF NOT EXISTS Department (
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(50) NOT NULL
);
INSERT IGNORE INTO Department VALUES
(1,
(2,
'Computer Science'),
'Commerce');
CREATE TABLE IF NOT EXISTS Student (
StudentID INT PRIMARY KEY,
StudentName VARCHAR(50) NOT NULL,
DepartmentID INT,
FOREIGN KEY (DepartmentID)
REFERENCES Department(DepartmentID)
);
DROP PROCEDURE IF EXISTS InsertStudent;
DELIMITER //
CREATE PROCEDURE InsertStudent(
IN p_
student
id INT,
_
IN p_
student
_
name VARCHAR(50),
IN p_
department
id INT
_
)
BEGIN
INSERT INTO Student
(StudentID, StudentName, DepartmentID)
VALUES
(p_
student
_
id, p_
student
_
name, p_
department
_
END //
id);
DELIMITER ;
CALL InsertStudent(105,
'Kavin'
, 1);
SELECT * FROM Student;