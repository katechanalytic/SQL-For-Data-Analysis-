/*
MODULE 3_HAVING CLAUSE
*/

-- Join EmployeeDemographics and Employee_Salary on Emp_ID
-- This returns combined data for each employee
SELECT *
FROM EmployeeDemographics ed 
JOIN Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID;

-- Count how many employees are in each department
-- Only show departments with more than 1 employee
SELECT Department, COUNT(Department)
FROM EmployeeDemographics ed
JOIN Employee_Salary es
ON es.Emp_ID = ed.Emp_ID 
GROUP BY Department
HAVING COUNT(Department) > 1;

-- Calculate the average salary per department
-- Only show departments where the average salary is greater than 80,000
-- Results are ordered by average salary
SELECT Department, AVG(Annual_Salary)
FROM EmployeeDemographics ed
JOIN Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID 
GROUP BY Department
HAVING AVG(es.Annual_Salary) > 80000
ORDER BY AVG(es.Annual_Salary);
