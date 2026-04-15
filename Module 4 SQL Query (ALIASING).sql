/*
MODULE 4 ALIASING
*/
SELECT First_Name AS FNAME
FROM EmployeeDemographics

SELECT First_Name || ' ' || Last_Name AS FULL_NAME
FROM EmployeeDemographics

SELECT AVG(Annual_salary) AS Average_Salary
FROM Employee_Salary es 

SELECT DEMO.Emp_ID
FROM EmployeeDemographics AS DEMO

SELECT SAL.Annual_Salary 
FROM Employee_Salary  AS SAL

SELECT DEMO.Emp_ID, SAL.Annual_Salary
FROM EmployeeDemographics AS DEMO
JOIN Employee_Salary AS SAL
ON DEMO.Emp_ID = SAL.Emp_ID


