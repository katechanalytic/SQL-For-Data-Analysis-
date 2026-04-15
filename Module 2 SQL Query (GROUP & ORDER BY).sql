/*
MODULE 2 GROUP BY, ORDER BY
*/

SELECT DISTINCT(Gender)
FROM EmployeeDemographics

SELECT Gender
FROM EmployeeDemographics
GROUP BY Gender

SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender

SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender,Age 

SELECT Emp_ID, Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Emp_ID 

SELECT* 
FROM EmployeeDemographics
ORDER BY AGE asc

SELECT* 
FROM Employee_Salary es 
ORDER BY Annual_Salary  DESC 

SELECT* 
FROM Employee_Salary es 
ORDER BY Pension  ASC 

SELECT* 
FROM EmployeeDemographics
ORDER BY Age ASC, Gender

SELECT* 
FROM EmployeeDemographics
ORDER BY Gender ASC, Age

SELECT* 
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC

SELECT  Gender, COUNT (Gender) 
FROM EmployeeDemographics
WHERE Age >40
GROUP  BY Gender

SELECT  Gender, COUNT (GENDER) AS GENDER_COUNT
FROM EmployeeDemographics
WHERE Age < 30
GROUP  BY Gender
ORDER BY GENDER_COUNT ASC 

---LIMITING DATA
SELECT *
FROM EmployeeDemographics
LIMIT 5
