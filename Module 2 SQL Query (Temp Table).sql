/*
MODULE 2_CREATING TEMP TABLES
*/

CREATE TEMP TABLE Temp_Salary_Database
(Emp_ID VAR(100),
Annual_salary INT,
Pension INT)

SELECT *
FROM Temp_Salary_Database

INSERT INTO Temp_Salary_Database
VALUES	('ET546', '90000', '5000')

INSERT INTO Temp_Salary_Database
SELECT EMP_ID,Annual_Salary,Pension
FROM Employee_Salary

CREATE TEMP TABLE Temp_Employee_Database
(Emp_ID VAR(100),
First_Name  VAR(100), 
Departmnet VAR(100),
Avearge_Salary INT,
Average_Pension INT)

SELECT *
FROM Temp_employee_Database

INSERT INTO Temp_Employee_Database
SELECT DEMO.Emp_ID, DEMO.First_Name, COUNT (Department), AVG(Annual_salary), AVG (pension)
FROM  EmployeeDemographics AS DEMO
JOIN Employee_Salary AS SAL
ON DEMO.Emp_ID=SAL.Emp_ID
GROUP BY Department


DROP TABLE IF EXISTS Temp_employee_Database




