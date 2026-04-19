/*
MODULE 4 UNION, UNION ALL
*/

-- View all records from EmployeeDemographics
SELECT *
FROM EmployeeDemographics ed;

-- View all records from Employee_Salary
SELECT *
FROM Employee_Salary es;

-- Perform a full outer join between demographics and salary
-- This returns all rows from both tables, matching on Emp_ID
SELECT *
FROM EmployeeDemographics ed 
FULL OUTER JOIN Employee_Salary es 
ON ed.Emp_ID = es.Emp_ID;

-- UNION combines results from two queries and removes duplicates
-- Since both queries are identical, the result will just be the same as one query
SELECT *
FROM Employee_Salary es 
UNION 
SELECT * 
FROM Employee_Salary es;

-- UNION ALL combines results from two queries and keeps duplicates
-- Since both queries are identical, every row will appear twice
SELECT *
FROM Employee_Salary es 
UNION ALL 
SELECT * 
FROM Employee_Salary es;

-- UNION ALL again, but with ORDER BY applied to the final result
-- This will show all rows (including duplicates) sorted by Emp_ID
SELECT *
FROM Employee_Salary es 
UNION ALL 
SELECT * 
FROM Employee_Salary es
ORDER BY Emp_ID;
