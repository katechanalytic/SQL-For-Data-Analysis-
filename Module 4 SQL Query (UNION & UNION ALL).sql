/*
MODULE 4 UNION, UNION ALL
*/

SELECT*
FROM EmployeeDemographics ed 

SELECT*
FROM Employee_Salary es 

SELECT*
FROM EmployeeDemographics ed 
FULL OUTER JOIN Employee_Salary es 
ON ed.Emp_ID =es.Emp_ID 

SELECT*
FROM Employee_Salary es 
UNION 
SELECT * 
FROM Employee_Salary es 

SELECT*
FROM Employee_Salary es 
UNION ALL 
SELECT * 
FROM Employee_Salary es 

SELECT*
FROM Employee_Salary es 
UNION ALL 
SELECT * 
FROM Employee_Salary es
ORDER BY Emp_ID





