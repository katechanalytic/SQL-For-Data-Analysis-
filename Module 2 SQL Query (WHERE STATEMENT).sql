/*
---MODULE 2 WHERE STATEMENT
Comparison Operator; =, <>, <, >
Logical Operator; AND, OR, Like, Null, Not Null, IN, BETWEEN
*/

SELECT*
FROM EmployeeDemographics

SELECT*
FROM EmployeeDemographics
WHERE First_Name = 'Forrest'

SELECT*
FROM EmployeeDemographics
WHERE First_Name <> 'Zhang'

SELECT*
FROM EmployeeDemographics
WHERE Age > 40

SELECT*
FROM EmployeeDemographics
WHERE Age < 40

SELECT*
FROM EmployeeDemographics
WHERE Age < 30

SELECT*
FROM EmployeeDemographics
WHERE Age >= 30

SELECT*
FROM EmployeeDemographics
WHERE Age <= 35

SELECT*
FROM EmployeeDemographics
WHERE Age <=30 AND Gender = 'F'

SELECT*
FROM EmployeeDemographics
WHERE Age <=40 OR Gender = 'M'

SELECT*
FROM EmployeeDemographics
WHERE First_Name 
LIKE 'B%'

SELECT*
FROM EmployeeDemographics
WHERE Last_Name LIKE '%A%'

SELECT*
FROM EmployeeDemographics
WHERE Last_Name IS NOT NULL

SELECT*
FROM EmployeeDemographics
WHERE Last_Name IS NULL

SELECT*
FROM EmployeeDemographics
WHERE first_name IN ('Carol', 'Biti')
