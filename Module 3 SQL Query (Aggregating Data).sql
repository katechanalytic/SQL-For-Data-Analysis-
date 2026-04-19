/*
 COUNT, SUM, MAX, MIN, AVG
*/

-----EMPLOYEE DEMOGRAPHIC DATABASE
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

----PROUCTION TABLE (DATABASE)
--Find the Min yogurt production for the year 2021.
SELECT MIN(Value)
FROM yogurt_production yp 
WHERE Year = '2021';

--Find the average honey production for the year 2022.
SELECT AVG(Value)
FROM honey_production
WHERE Year = '2022';

--Find the Max egg production for the year 2023.
SELECT MAX(Value)
FROM egg_production ep 
WHERE Year = '2023';


