/*
---MODULE 2 WHERE STATEMENT
Comparison Operator; =, <>, <, >
Logical Operator; AND, OR, Like, Null, Not Null, IN, BETWEEN
*/

-- Select all rows and columns from EmployeeDemographics
SELECT *
FROM EmployeeDemographics;

-- Select all rows where the first name is exactly 'Forrest'
SELECT *
FROM EmployeeDemographics
WHERE First_Name = 'Forrest';

-- Select all rows where the first name is NOT 'Zhang'
SELECT *
FROM EmployeeDemographics
WHERE First_Name <> 'Zhang';

-- Select employees older than 40
SELECT *
FROM EmployeeDemographics
WHERE Age > 40;

-- Select employees younger than 40
SELECT *
FROM EmployeeDemographics
WHERE Age < 40;

-- Select employees younger than 30
SELECT *
FROM EmployeeDemographics
WHERE Age < 30;

-- Select employees aged 30 or older
SELECT *
FROM EmployeeDemographics
WHERE Age >= 30;

-- Select employees aged 35 or younger
SELECT *
FROM EmployeeDemographics
WHERE Age <= 35;

--Get the state names with their corresponding ANSI codes from the state_lookup table,What number is OHIO? (PRODUCTION DATABASE)
SELECT * 
FROM state_lookup
WHERE State = 'OHIO'

--The State Relations team wants a list of all states names with their corresponding ANSI codes.
--Can you generate that list?
--What is the State_ANSI code for Florida?
SELECT *
FROM state_lookup sl 
WHERE State = 'FLORIDA'

--The State Relations team wants a list of all states names with their corresponding ANSI codes. (PRODUCTION DATABASE)
--Can you generate that list? What is the total for NEW KENTUCKY?
SELECT *
FROM state_lookup sl 
WHERE State = 'KENTUCKY'

-- Select female employees aged 30 or younger
SELECT *
FROM EmployeeDemographics
WHERE Age <= 30 AND Gender = 'F';

-- Select employees who are either male OR aged 40 or younger
SELECT *
FROM EmployeeDemographics
WHERE Age <= 40 OR Gender = 'M';

-- Select employees whose first name starts with 'B'
SELECT *
FROM EmployeeDemographics
WHERE First_Name LIKE 'B%';

-- Select employees whose last name contains the letter 'A'
SELECT *
FROM EmployeeDemographics
WHERE Last_Name LIKE '%A%';

-- Select employees where the last name is not null (i.e., it exists)
SELECT *
FROM EmployeeDemographics
WHERE Last_Name IS NOT NULL;

-- Select employees where the last name is null (missing)
SELECT *
FROM EmployeeDemographics
WHERE Last_Name IS NULL;

-- Select employees whose first name is either 'Carol' or 'Biti'
SELECT *
FROM EmployeeDemographics
WHERE First_Name IN ('Carol', 'Biti');

--Find the total yogurt production for states that also produced cheese in 2021.
SELECT SUM(y.Value)
FROM yogurt_production y
WHERE y.Year = '2021' AND y.State_ANSI IN (SELECT DISTINCT c.State_ANSI 
FROM cheese_production c WHERE c.Year = '2021');

--Find the average coffee production for all years where the honey production exceeded 1 million.
SELECT AVG(cp.Value) as AVERAGE_COFFEE_PRODUCTION
FROM  coffee_production cp 
WHERE cp.Year
IN (SELECT Year
FROM honey_production
WHERE Value > 1000000);




