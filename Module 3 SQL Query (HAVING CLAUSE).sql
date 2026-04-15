/*
MODULE 3_HAVING CLAUSE
*/

SELECT *
FROM EmployeeDemographics ed 
JOIN Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID 

SELECT Department, COUNT (Department)
FROM EmployeeDemographics ed
JOIN Employee_Salary es
ON es.Emp_ID = ed.Emp_ID 
GROUP BY Department
HAVING COUNT (Department) > 1

SELECT Department,AVG (Annual_Salary)
FROM EmployeeDemographics ed
JOIN Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID 
GROUP BY Department
HAVING AVG (es.Annual_Salary ) > 80000
ORDER BY AVG (es.Annual_Salary)

