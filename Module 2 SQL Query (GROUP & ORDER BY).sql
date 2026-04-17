/*
MODULE 2 GROUP BY, ORDER BY
*/

-- Return all distinct gender values (unique entries only)
SELECT DISTINCT(Gender)
FROM EmployeeDemographics;

-- Group results by gender (shows each gender once)
SELECT Gender
FROM EmployeeDemographics
GROUP BY Gender;

-- Count how many employees fall into each gender category
SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender;

-- Count employees by both gender and age
SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender, Age;

-- Count employees grouped by Emp_ID (effectively counts 1 per employee)
SELECT Emp_ID, Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Emp_ID;

-- Order employees by age in ascending order (youngest first)
SELECT * 
FROM EmployeeDemographics
ORDER BY Age ASC;

-- Order employees by annual salary in descending order (highest first)
SELECT * 
FROM Employee_Salary es 
ORDER BY Annual_Salary DESC;

-- Order employees by pension in ascending order (lowest first)
SELECT * 
FROM Employee_Salary es 
ORDER BY Pension ASC;

-- Order employees by age ascending, then gender
SELECT * 
FROM EmployeeDemographics
ORDER BY Age ASC, Gender;

-- Order employees by gender ascending, then age
SELECT * 
FROM EmployeeDemographics
ORDER BY Gender ASC, Age;

-- Order employees by column 4 (Gender) descending, then column 5 (Age) descending
-- NOTE: Using column numbers is allowed but less readable than naming columns directly
SELECT * 
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC;

-- Count employees by gender, but only those older than 40
SELECT Gender, COUNT(Gender) 
FROM EmployeeDemographics
WHERE Age > 40
GROUP BY Gender;

-- Count employees by gender, but only those younger than 30
-- Results ordered by the count in ascending order
SELECT Gender, COUNT(Gender) AS Gender_Count
FROM EmployeeDemographics
WHERE Age < 30
GROUP BY Gender
ORDER BY Gender_Count ASC;

--- LIMITING DATA
-- Return only the first 5 rows from EmployeeDemographics
SELECT *
FROM EmployeeDemographics
LIMIT 5;

