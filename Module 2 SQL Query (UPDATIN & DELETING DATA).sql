/*
MODULE 2_UPDATING/DELETING DATA
*/

SELECT*
FROM EmployeeDemographics

SELECT*
FROM Employee_Salary es 

UPDATE EmployeeDemographics
SET Age = 28
WHERE First_Name = 'Bacata' AND Last_Name = 'Yvette'


UPDATE EmployeeDemographics
SET Gender = 'F'
WHERE Emp_ID = 'E1237'

DELETE FROM EmployeeDemographics 
WHERE First_Name = "Bacata"

SELECT *
FROM EmployeeDemographics
WHERE Emp_ID = 'E1235'
