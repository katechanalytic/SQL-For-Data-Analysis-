/*
MODULE 2 SELECT STATEMENT
*/

-- Select all columns and rows from the EmployeeDemographics table
SELECT *
FROM EmployeeDemographics;

-- Select all columns and rows from the Employee_Salary table
SELECT *
FROM Employee_Salary;

-- Select only the First_Name column from EmployeeDemographics
SELECT First_Name
FROM EmployeeDemographics;

-- Select both First_Name and Last_Name columns from Employee_Salary
SELECT First_Name, Last_Name
FROM Employee_Salary;

-- Select distinct (unique) department names from EmployeeDemographics
-- This removes duplicates so each department appears only once
SELECT DISTINCT Department
FROM EmployeeDemographics;

-- Select the first 5 rows from EmployeeDemographics
-- Useful for previewing data without retrieving the entire table
SELECT *
FROM EmployeeDemographics
LIMIT 5;

