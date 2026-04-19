/*
MODULE 5 PARTITION BY (which is one of the most useful window functions in SQL. Let’s break it down
and highlight the differences between PARTITION BY and GROUP BY:
*/

-- View all records from EmployeeDemographics
SELECT *
FROM EmployeeDemographics;

-- View all records from Employee_Salary
SELECT *
FROM Employee_Salary;

-- Join demographics and salary
SELECT *
FROM EmployeeDemographics AS DEMO
JOIN Employee_Salary AS SAL
ON DEMO.Emp_ID = SAL.Emp_ID;

-- Count employees by gender, but show the count alongside each row
SELECT DEMO.First_Name, DEMO.Last_Name, DEMO.Gender, SAL.Annual_Salary,
       COUNT(Gender) OVER (PARTITION BY Gender) AS Total_Gender
FROM EmployeeDemographics AS DEMO
JOIN Employee_Salary AS SAL
ON DEMO.Emp_ID = SAL.Emp_ID;

-- Count employees by department, but show the count alongside each row
SELECT DEMO.First_Name, DEMO.Last_Name, DEMO.Department, SAL.Annual_Salary,
       COUNT(Department) OVER (PARTITION BY Department) AS Total_Department
FROM EmployeeDemographics AS DEMO
JOIN Employee_Salary AS SAL
ON DEMO.Emp_ID = SAL.Emp_ID;

-- Using GROUP BY: collapses rows into one per department
SELECT DEMO.Department, COUNT(DEMO.Department)
FROM EmployeeDemographics AS DEMO
JOIN Employee_Salary AS SAL
ON DEMO.Emp_ID = SAL.Emp_ID
GROUP BY Department;

-- Using GROUP BY: collapses rows into one per gender
SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics AS DEMO
JOIN Employee_Salary AS SAL
ON DEMO.Emp_ID = SAL.Emp_ID
GROUP BY Gender;

-- Simple count of all employees by gender (no join needed here)
SELECT COUNT(Gender)
FROM EmployeeDemographics ed;
