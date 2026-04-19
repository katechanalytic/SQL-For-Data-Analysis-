/*
MODULE 4 ALIASING
*/

-- Rename the First_Name column as FNAME in the result set
SELECT First_Name AS FNAME
FROM EmployeeDemographics;

-- Concatenate first and last names into a single column called FULL_NAME
SELECT First_Name || ' ' || Last_Name AS FULL_NAME
FROM EmployeeDemographics;

-- Calculate the average annual salary and label the result as Average_Salary
SELECT AVG(Annual_salary) AS Average_Salary
FROM Employee_Salary es;

-- Use an alias (DEMO) for EmployeeDemographics and select Emp_ID
SELECT DEMO.Emp_ID
FROM EmployeeDemographics AS DEMO;

-- Use an alias (SAL) for Employee_Salary and select Annual_Salary
SELECT SAL.Annual_Salary 
FROM Employee_Salary AS SAL;

-- Join EmployeeDemographics (aliased as DEMO) with Employee_Salary (aliased as SAL)
-- Return Emp_ID and Annual_Salary from the joined tables
SELECT DEMO.Emp_ID, SAL.Annual_Salary
FROM EmployeeDemographics AS DEMO
JOIN Employee_Salary AS SAL
ON DEMO.Emp_ID = SAL.Emp_ID;
