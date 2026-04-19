/*
 COUNT, SUM, MAX, MIN, AVG
*/

-- Count how many employees have a non-null Last_Name
SELECT COUNT(Last_Name)
FROM EmployeeDemographics;

-- Find the highest annual salary among all employees
SELECT MAX(Annual_Salary)
FROM Employee_Salary;

-- Find the lowest annual salary among all employees
SELECT MIN(Annual_Salary)
FROM Employee_Salary;

-- Calculate the average annual salary across all employees
SELECT AVG(Annual_Salary)
FROM Employee_Salary;

-- Calculate the total sum of all annual salaries
SELECT SUM(Annual_Salary)
FROM Employee_Salary;


