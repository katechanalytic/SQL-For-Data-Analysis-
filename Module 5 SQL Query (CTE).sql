/*
MODULE 5 CTE (COMMON TABLE EXPRESSION)
*/

WITH CTE_EMPLOYEE AS 
(SELECT DEMO.First_Name, DEMO.Last_Name, DEMO.Department,
COUNT (DEMO.Department ) OVER (PARTITION BY DEMO.Department) AS Total_Employee,
AVG (Annual_Salary) OVER (PARTITION BY Annual_Salary) AS Average_Salary
FROM EmployeeDemographics AS DEMO
JOIN Employee_Salary AS SAL
ON DEMO.Emp_ID =SAL.Emp_ID
WHERE Annual_Salary > '80000')
SELECT *
FROM CTE_EMPLOYEE

WITH CTE_EMPLOYEE AS 
(SELECT DEMO.First_Name, DEMO.Last_Name, DEMO.Department,
COUNT (DEMO.Department ) OVER (PARTITION BY DEMO.Department) AS Total_Employee,
AVG (Annual_Salary) OVER (PARTITION BY SAL.Annual_Salary) AS Average_Salary
FROM EmployeeDemographics AS DEMO
JOIN Employee_Salary AS SAL
ON DEMO.Emp_ID =SAL.Emp_ID
WHERE Annual_Salary > '80000')
SELECT First_Name, Department,Average_Salary 
FROM CTE_EMPLOYEE

