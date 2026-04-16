/*
MODULE 5 PARTITION BY
*/

SELECT *
FROM EmployeeDemographics

SELECT*
FROM Employee_Salary

SELECT *
FROM EmployeeDemographics AS DEMO
JOIN Employee_Salary AS SAL
ON DEMO.Emp_ID=SAL.Emp_ID

SELECT DEMO.First_Name, DEMO.Last_Name,DEMO.Gender, SAL.Annual_Salary,
COUNT (Gender) OVER (PARTITION BY Gender) AS TOTAL_GENDER
FROM EmployeeDemographics AS DEMO
JOIN Employee_Salary AS SAL
ON DEMO.Emp_ID=SAL.Emp_ID

SELECT DEMO.First_Name, DEMO.Last_Name,DEMO.Department, SAL.Annual_Salary,
COUNT (Department) OVER (PARTITION BY Department) AS Total_Department
FROM EmployeeDemographics AS DEMO
JOIN Employee_Salary AS SAL
ON DEMO.Emp_ID=SAL.Emp_ID

SELECT DEMO.Department, COUNT(DEMO.Department)
FROM EmployeeDemographics AS DEMO
JOIN Employee_Salary AS SAL
ON DEMO.Emp_ID=SAL.Emp_ID
GROUP BY Department 

SELECT  Gender, COUNT (Gender)
FROM EmployeeDemographics AS DEMO
JOIN Employee_Salary AS SAL
ON DEMO.Emp_ID=SAL.Emp_ID
GROUP BY Gender

SELECT COUNT(GENDER)
FROM EmployeeDemographics ed 

