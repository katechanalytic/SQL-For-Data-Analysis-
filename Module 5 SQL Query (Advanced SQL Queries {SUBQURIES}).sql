/*
 MODULE 5 SUBQUERIES (IN THE SELECT, FROM, WHERE STATEMENT)
*/

-- View all records from Employee_Salary
SELECT *
FROM Employee_Salary;

---- SUBQUERIES IN SELECT
-- Show each employee’s salary alongside the overall average salary
SELECT Emp_ID, Annual_Salary,
       (SELECT AVG(Annual_Salary) 
        FROM Employee_Salary) AS Salary_Average
FROM Employee_Salary;

---- HOW TO DO IT WITH A PARTITION BY
-- Same as above, but using a window function (more efficient)
SELECT Emp_ID, Annual_Salary, 
       AVG(Annual_Salary) OVER () AS All_Avg_Salary
FROM Employee_Salary;

---- SUBQUERIES IN FROM
-- Use a subquery as a derived table to calculate averages
SELECT Emp_ID, All_Avg_Salary
FROM (
    SELECT Emp_ID, Annual_Salary, 
           AVG(Annual_Salary) OVER () AS All_Avg_Salary
    FROM Employee_Salary
) Emp;

---- SUBQUERIES IN WHERE
-- Find employees whose IDs appear in EmployeeDemographics with Age < 30
SELECT Emp_ID, Annual_Salary
FROM Employee_Salary
WHERE Emp_ID IN (
    SELECT Emp_ID
    FROM EmployeeDemographics
    WHERE Age < 30
);

--PRODUCTION DATABASE_Dairy Division query
-- Find total yogurt production in 2022 for states that also have cheese production data in 2023
SELECT SUM(YP.Value) AS Total_Yoghurt_Production
FROM yogurt_production YP
WHERE YP.Year = 2022 
  AND YP.State_ANSI IN (
      SELECT DISTINCT CP.State_ANSI
      FROM cheese_production CP
      WHERE CP.Year = 2023
  );



