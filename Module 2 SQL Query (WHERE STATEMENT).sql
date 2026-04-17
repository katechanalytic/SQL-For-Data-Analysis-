/*
---MODULE 2 WHERE STATEMENT
Comparison Operator; =, <>, <, >
Logical Operator; AND, OR, Like, Null, Not Null, IN, BETWEEN
*/

-- Select all rows and columns from EmployeeDemographics
SELECT *
FROM EmployeeDemographics;

-- Select all rows where the first name is exactly 'Forrest'
SELECT *
FROM EmployeeDemographics
WHERE First_Name = 'Forrest';

-- Select all rows where the first name is NOT 'Zhang'
SELECT *
FROM EmployeeDemographics
WHERE First_Name <> 'Zhang';

-- Select employees older than 40
SELECT *
FROM EmployeeDemographics
WHERE Age > 40;

-- Select employees younger than 40
SELECT *
FROM EmployeeDemographics
WHERE Age < 40;

-- Select employees younger than 30
SELECT *
FROM EmployeeDemographics
WHERE Age < 30;

-- Select employees aged 30 or older
SELECT *
FROM EmployeeDemographics
WHERE Age >= 30;

-- Select employees aged 35 or younger
SELECT *
FROM EmployeeDemographics
WHERE Age <= 35;

-- Select female employees aged 30 or younger
SELECT *
FROM EmployeeDemographics
WHERE Age <= 30 AND Gender = 'F';

-- Select employees who are either male OR aged 40 or younger
SELECT *
FROM EmployeeDemographics
WHERE Age <= 40 OR Gender = 'M';

-- Select employees whose first name starts with 'B'
SELECT *
FROM EmployeeDemographics
WHERE First_Name LIKE 'B%';

-- Select employees whose last name contains the letter 'A'
SELECT *
FROM EmployeeDemographics
WHERE Last_Name LIKE '%A%';

-- Select employees where the last name is not null (i.e., it exists)
SELECT *
FROM EmployeeDemographics
WHERE Last_Name IS NOT NULL;

-- Select employees where the last name is null (missing)
SELECT *
FROM EmployeeDemographics
WHERE Last_Name IS NULL;

-- Select employees whose first name is either 'Carol' or 'Biti'
SELECT *
FROM EmployeeDemographics
WHERE First_Name IN ('Carol', 'Biti');
