/*
MODULE 5 CASE STATEMENT
*/

SELECT *
FROM EmployeeDemographics

SELECT *
FROM Employee_Salary es 

SELECT First_Name,Last_Name,Age
FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

SELECT First_Name,Last_Name,Age,
CASE 
	WHEN Age >30 THEN 'OLD'
	ELSE 'YOUNG'
	END
FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

SELECT First_Name,Last_Name,Age,
CASE 
	WHEN Age >40 THEN 'OLD AGE'
	WHEN Age BETWEEN 27 AND 30 THEN 'MIDLLE AGE'
	ELSE 'YOUNG STAFF'
	END
FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

SELECT First_Name,Annual_salary,Pension,
CASE 
	WHEN es.Annual_Salary  >100000 THEN 'High Earning'
	WHEN es.Annual_Salary  BETWEEN 90000 AND 100000 THEN 'Middlle Earning'
	ELSE 'Low Earning'
	END AS Salary_range
FROM Employee_Salary es 
WHERE Annual_salary  IS NOT NULL
ORDER BY Annual_salary 

SELECT ed.First_Name , ed.Last_name,ed.Department, es.Annual_Salary 
FROM Employee_Salary es 
JOIN EmployeeDemographics ed 
ON ed.Emp_ID = es.Emp_ID 
ORDER BY Annual_Salary 

SELECT ed.First_Name , ed.Last_name,ed.Department, es.Annual_Salary,
CASE
	WHEN Department = 'Sales' AND Annual_salary < (90000) THEN AnnuaL_Salary + (Annual_salary*.07)
	WHEN Department = 'Customer Service' AND Annual_salary < (90000) THEN Annual_Salary + (Annual_Salary*.07)
	WHEN Department = 'Human Resources' AND Annual_salary < (90000) THEN Annual_Salary + (Annual_Salary*.07)
	ELSE es.Annual_Salary + (es.Annual_Salary * 0)
	END AS Salary_Increment
FROM EmployeeDemographics ed 
JOIN Employee_Salary es 
ON ed.Emp_ID = es.Emp_ID
ORDER BY Annual_Salary


