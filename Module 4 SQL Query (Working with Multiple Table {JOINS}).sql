/*
MODULE 4 SQL JOINS (INNER JOINS, FULL/RIGHT/LEFT/OUTER JOINS)
*/

SELECT *
FROM Employee_Salary es 

SELECT *
FROM EmployeeDemographics ed 

SELECT *
FROM EmployeeDemographics ed 
INNER JOIN  Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID 

SELECT *
FROM EmployeeDemographics ed 
FULL OUTER JOIN  Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID 
 
SELECT *
FROM EmployeeDemographics ed 
LEFT OUTER JOIN  Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID 
 
SELECT *
FROM EmployeeDemographics ed 
RIGHT OUTER JOIN  Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID 
 
SELECT ed.Emp_ID , ed.First_Name, ed.Last_Name, ed.Department,es.Annual_Salary
FROM EmployeeDemographics ed 
INNER JOIN  Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID 
 
SELECT ed.Emp_ID , ed.First_Name, ed.Last_Name, ed.Department,es.Annual_Salary,es.Pension 
FROM EmployeeDemographics ed 
RIGHT JOIN  Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID 
 
SELECT ed.Emp_ID , ed.First_Name, ed.Last_Name, ed.Department,es.Annual_Salary,es.Pension 
FROM EmployeeDemographics ed 
LEFT JOIN  Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID 

SELECT ed.Emp_ID , ed.First_Name, ed.Last_Name, ed.Department,es.Annual_Salary
FROM EmployeeDemographics ed 
INNER JOIN  Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID 
WHERE ed.First_Name <> "Bacata"
ORDER BY Annual_Salary ASC 

SELECT ed.Emp_ID , ed.First_Name, ed.Last_Name, ed.Department,es.Annual_Salary
FROM EmployeeDemographics ed 
INNER JOIN  Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID 
WHERE ed.First_Name = "Bacata"
ORDER BY Annual_Salary DESC 
 
SELECT ed.Department, Avg(es.Annual_Salary)
FROM EmployeeDemographics ed 
INNER JOIN  Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID 
WHERE Department = "Human Resources"
ORDER BY Annual_Salary DESC 

--Which states had cheese production greater than 100 million in April 2022? 
--The Cheese Department wants to focus their marketing efforts there. 
--How many states are there?
SELECT sl.State,Period,YEAR,Value ,sl.State_ANSI
FROM  cheese_production cp 
INNER JOIN state_lookup sl 
ON cp.State_ANSI = sl.State_ANSI
WHERE cp.Value <> 100000000
 AND cp.Period = 'APR'
 AND cp.Year = 2022;

--For a cross-commodity report, can you list all states with their cheese production values, even if they didn’t produce any milk in MAR of 2020?
--What is the total for NEW JERSEY?
SELECT sl.State,
SUM(cp.Value) TOTAL_CHEESE_PRODUCTION
FROM state_lookup sl 
LEFT JOIN cheese_production cp 
ON sl.State_ANSI = cp.State_ANSI
WHERE cp.Period = 'MAR' AND cp.Year = 2020
GROUP BY sl.State
HAVING sl.State = 'NEW JERSEY';



