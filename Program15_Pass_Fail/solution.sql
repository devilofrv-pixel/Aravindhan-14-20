
DELIMITER //
CREATE PROCEDURE CheckResult(IN student
_
marks INT)
BEGIN
IF student
marks >= 40 THEN
_
SELECT 'PASS' AS Result;
ELSE
SELECT 'FAIL' AS Result;
END IF;
END //
DELIMITER ;
CALL CheckResult(65);