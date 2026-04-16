--/*
MODULE 5 STRING FUNCTION - (TRIM, LTRIM, RTRIM, REPLACE, SUBSTRING, LOWER, UPPER)
--*/

CREATE TABLE Employee_table
(EmployeeID varchar (50),
first_Name varchar(50),
Last_Name varchar(50)
)

SELECT *
FROM Employee_table

INSERT INTO  Employee_table VALUES
('E246 ', ' Jimo ', 'Farad  '),
(' E289', ' Austin', '  Beckley '),
('  E265', ' Tomi ', ' Fenades -   Hamza')

----USING TRIM, LTRIM, RTRIM

SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM  Employee_table

SELECT EmployeeID, RTRIM(EmployeeID) AS IDTRIM
FROM  Employee_table

SELECT EmployeeID, LTRIM(EmployeeID) AS IDTRIM
FROM  Employee_table

----USING REPLACE

SELECT Last_Name, REPLACE(Last_Name, ' Fenades -','') AS Last_Name_Cleaned 
FROM Employee_table

----USING SUBTRING

SELECT SUBSTRING (first_Name,1,4)
FROM Employee_table

---- USING UPPER AMD LOWER
SELECT first_Name, LOWER(first_Name)
FROM Employee_table

SELECT first_Name, UPPER(first_Name)
FROM Employee_table

DROP TABLE Employee_table
