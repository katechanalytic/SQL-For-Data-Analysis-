/*
MODULE 5 CASE STATEMENT (CASE statement module which is all about conditional logic in SQL.)
*/

-- View all records from EmployeeDemographics
SELECT *
FROM EmployeeDemographics;

-- View all records from Employee_Salary
SELECT *
FROM Employee_Salary es;

-- Show employees with their age, sorted
SELECT First_Name, Last_Name, Age
FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age;

-- Categorize employees as OLD or YOUNG based on age
SELECT First_Name, Last_Name, Age,
       CASE 
           WHEN Age > 30 THEN 'OLD'
           ELSE 'YOUNG'
       END AS Age_Category
FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age;

-- More detailed age categories
SELECT First_Name, Last_Name, Age,
       CASE 
           WHEN Age > 40 THEN 'OLD AGE'
           WHEN Age BETWEEN 27 AND 30 THEN 'MIDDLE AGE'
           ELSE 'YOUNG STAFF'
       END AS Age_Category
FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age;

-- Salary ranges based on Annual_Salary
SELECT First_Name, Annual_salary, Pension,
       CASE 
           WHEN es.Annual_Salary > 100000 THEN 'High Earning'
           WHEN es.Annual_Salary BETWEEN 90000 AND 100000 THEN 'Middle Earning'
           ELSE 'Low Earning'
       END AS Salary_Range
FROM Employee_Salary es 
WHERE Annual_salary IS NOT NULL
ORDER BY Annual_salary;

-- Join demographics and salary, show basic info
SELECT ed.First_Name, ed.Last_Name, ed.Department, es.Annual_Salary 
FROM Employee_Salary es 
JOIN EmployeeDemographics ed 
ON ed.Emp_ID = es.Emp_ID 
ORDER BY Annual_Salary;

-- Apply conditional salary increments by department
SELECT ed.First_Name, ed.Last_Name, ed.Department, es.Annual_Salary,
       CASE
           WHEN Department = 'Sales' AND Annual_salary < 90000 
                THEN Annual_Salary + (Annual_Salary * 0.07)
           WHEN Department = 'Customer Service' AND Annual_salary < 90000 
                THEN Annual_Salary + (Annual_Salary * 0.07)
           WHEN Department = 'Human Resources' AND Annual_salary < 90000 
                THEN Annual_Salary + (Annual_Salary * 0.07)
           ELSE es.Annual_Salary
       END AS Salary_Increment
FROM EmployeeDemographics ed 
JOIN Employee_Salary es 
ON ed.Emp_ID = es.Emp_ID
ORDER BY Annual_Salary;

