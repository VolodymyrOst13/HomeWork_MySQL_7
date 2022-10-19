USE MyJoinsDB;

DELIMITER |
CREATE PROCEDURE getPhoneAddress()
BEGIN
    SELECT phone, address FROM MyJoinsDB.Employee
    JOIN MyJoinsDB.workingStatus  ON id = EmployeeID;
END
|

DELIMITER |
CALL getPhoneAddress();


DELIMITER |
CREATE PROCEDURE getPhoneDateBirth_famStatus()
BEGIN
    SELECT dateBirth, phone FROM MyJoinsDB.Employee 
    JOIN MyJoinsDB.workingStatus   ON  famStatus = 'не одружений' and id = EmployeeID;
END
|

DELIMITER |
CALL getPhoneDateBirth_famStatus();|

DELIMITER |
CREATE PROCEDURE getPhoneDateBirth_position()
BEGIN
    SELECT phone as ТЕЛЕФОН, dateBirth as ДЕНЬ_НАРОДЖЕННЯ, CONCAT(firstName, ' ', lastName) as ІМЯ FROM MyJoinsDB.Employee 
    JOIN MyJoinsDB.workingStatus
    ON     position = 'Менеджер'  and id = EmployeeID
    JOIN MyJoinsDB.workingStatus 
    ON id = EmployeeID;
END
|

DELIMITER |
CALL getPhoneDateBirth_position();|