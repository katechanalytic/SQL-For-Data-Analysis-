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

--Which states had cheese production greater than 100 million in April 2023? 
--The Cheese Department wants to focus their marketing efforts there. 
--How many states are there?
SELECT L.State,Period,YEAR,Value ,L.State_ANSI
FROM cheese_production P
INNER JOIN state_lookup L
ON P.State_ANSI = L.State_ANSI
WHERE P.Value <> 100000000
 AND P.Period = 'APR'
 AND P.Year = 2023;




