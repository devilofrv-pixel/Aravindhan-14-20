USE CollegeDB;
DELIMITER //
CREATE FUNCTION CountStudentsByDepartment(
p_
DepartmentID INT
)
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE student
count INT;
_
SELECT COUNT(*)
INTO student
count
_
FROM Student
WHERE DepartmentID = p_
DepartmentID;
RETURN student
count;
_
END //
DELIMITER ;
SELECT CountStudentsByDepartment(1) AS StudentCount;