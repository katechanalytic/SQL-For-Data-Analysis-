/*
 MODULE 5 CTE (COMMON TABLE EXPRESSION)
*/

-- Build a CTE to calculate employee counts and average salary
WITH CTE_EMPLOYEE AS (
    SELECT DEMO.First_Name, DEMO.Last_Name, DEMO.Department,
           COUNT(DEMO.Department) OVER (PARTITION BY DEMO.Department) AS Total_Employee,
           AVG(SAL.Annual_Salary) OVER (PARTITION BY DEMO.Department) AS Average_Salary
    FROM EmployeeDemographics AS DEMO
    JOIN Employee_Salary AS SAL
    ON DEMO.Emp_ID = SAL.Emp_ID
    WHERE SAL.Annual_Salary > 80000
)
SELECT *
FROM CTE_EMPLOYEE;


-- CTE, but selecting only specific columns
WITH CTE_EMPLOYEE AS (
    SELECT DEMO.First_Name, DEMO.Last_Name, DEMO.Department,
           COUNT(DEMO.Department) OVER (PARTITION BY DEMO.Department) AS Total_Employee,
           AVG(SAL.Annual_Salary) OVER (PARTITION BY DEMO.Department) AS Average_Salary
    FROM EmployeeDemographics AS DEMO
    JOIN Employee_Salary AS SAL
    ON DEMO.Emp_ID = SAL.Emp_ID
    WHERE SAL.Annual_Salary > 80000
)
SELECT First_Name, Department, Average_Salary 
FROM CTE_EMPLOYEE;
