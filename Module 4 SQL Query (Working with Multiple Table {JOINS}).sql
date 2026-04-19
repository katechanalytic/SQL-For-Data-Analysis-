/*
MODULE 4 SQL JOINS (INNER JOINS, FULL/RIGHT/LEFT/OUTER JOINS)
*/

-- View all records from Employee_Salary
SELECT *
FROM Employee_Salary es;

-- View all records from EmployeeDemographics
SELECT *
FROM EmployeeDemographics ed;

-- INNER JOIN: returns only rows where Emp_ID matches in both tables
SELECT *
FROM EmployeeDemographics ed 
INNER JOIN Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID;

-- FULL OUTER JOIN: returns all rows from both tables, matching where possible
SELECT *
FROM EmployeeDemographics ed 
FULL OUTER JOIN Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID;

-- LEFT OUTER JOIN: returns all rows from EmployeeDemographics,
-- plus matching rows from Employee_Salary (NULLs if no match)
SELECT *
FROM EmployeeDemographics ed 
LEFT OUTER JOIN Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID;

-- RIGHT OUTER JOIN: returns all rows from Employee_Salary,
-- plus matching rows from EmployeeDemographics (NULLs if no match)
SELECT *
FROM EmployeeDemographics ed 
RIGHT OUTER JOIN Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID;

-- INNER JOIN with selected columns
SELECT ed.Emp_ID, ed.First_Name, ed.Last_Name, ed.Department, es.Annual_Salary
FROM EmployeeDemographics ed 
INNER JOIN Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID;

-- RIGHT JOIN with selected columns
SELECT ed.Emp_ID, ed.First_Name, ed.Last_Name, ed.Department, es.Annual_Salary, es.Pension
FROM EmployeeDemographics ed 
RIGHT JOIN Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID;

-- LEFT JOIN with selected columns
SELECT ed.Emp_ID, ed.First_Name, ed.Last_Name, ed.Department, es.Annual_Salary, es.Pension
FROM EmployeeDemographics ed 
LEFT JOIN Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID;

-- INNER JOIN with filtering and ordering
SELECT ed.Emp_ID, ed.First_Name, ed.Last_Name, ed.Department, es.Annual_Salary
FROM EmployeeDemographics ed 
INNER JOIN Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID 
WHERE ed.First_Name <> 'Bacata'
ORDER BY Annual_Salary ASC;

-- INNER JOIN with filtering for a specific name
SELECT ed.Emp_ID, ed.First_Name, ed.Last_Name, ed.Department, es.Annual_Salary
FROM EmployeeDemographics ed 
INNER JOIN Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID 
WHERE ed.First_Name = 'Bacata'
ORDER BY Annual_Salary DESC;

-- Average salary for Human Resources department
SELECT ed.Department, AVG(es.Annual_Salary)
FROM EmployeeDemographics ed 
INNER JOIN Employee_Salary es 
ON es.Emp_ID = ed.Emp_ID 
WHERE Department = 'Human Resources'
ORDER BY Annual_Salary DESC;

---CHEESE PRODUCTION 
-- States with cheese production greater than 100 million in April 2022
SELECT sl.State, cp.Period, cp.Year, cp.Value, sl.State_ANSI
FROM cheese_production cp 
INNER JOIN state_lookup sl 
ON cp.State_ANSI = sl.State_ANSI
WHERE cp.Value > 100000000   -- corrected to "greater than"
  AND cp.Period = 'APR'
  AND cp.Year = 2022;

-- Cross-commodity report: list all states with cheese production values,
-- even if they didn’t produce milk in March 2020.
-- Show total for NEW JERSEY
SELECT sl.State,
       SUM(cp.Value) AS TOTAL_CHEESE_PRODUCTION
FROM state_lookup sl 
LEFT JOIN cheese_production cp 
ON sl.State_ANSI = cp.State_ANSI
WHERE cp.Period = 'MAR' AND cp.Year = 2020
GROUP BY sl.State
HAVING sl.State = 'NEW JERSEY';
