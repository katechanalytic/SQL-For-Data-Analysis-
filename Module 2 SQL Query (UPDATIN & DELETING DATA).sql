/*
MODULE 2_UPDATING/DELETING DATA
*/

-- View all records from EmployeeDemographics
SELECT *
FROM EmployeeDemographics;

-- View all records from Employee_Salary (aliased as es)
SELECT *
FROM Employee_Salary es;

-- Update the Age to 28 for the employee named Bacata Yvette
UPDATE EmployeeDemographics
SET Age = 28
WHERE First_Name = 'Bacata' AND Last_Name = 'Yvette';

-- Update the Gender to 'F' for the employee with ID E1237
UPDATE EmployeeDemographics
SET Gender = 'F'
WHERE Emp_ID = 'E1237';

-- Delete the record for the employee whose first name is Bacata
DELETE FROM EmployeeDemographics 
WHERE First_Name = 'Bacata';

-- Select the record for the employee with ID E1235
SELECT *
FROM EmployeeDemographics
WHERE Emp_ID = 'E1235';

-- Drop the temporary table Temp_employee_Database if it exists
DROP TABLE IF EXISTS Temp_employee_Database;

