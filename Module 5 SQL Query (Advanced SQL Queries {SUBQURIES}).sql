 /*
 MODULE 5 SUBQUIRIES (IN THE SELECT, FROM, WHERE STATEMENT)
 --*/

 SELECT*
 FROM Employee_Salary

 ----SUBQUIRIES IN SELECT

 SELECT EMP_ID, Annual_Salary,
(SELECT AVG(Annual_Salary) 
 FROM Employee_Salary) AS Salary_Average
 FROM Employee_Salary

 ----HOW TO DO IT WITH A PARTITION BY
  SELECT EMP_ID, Annual_Salary, AVG (Annual_salary) OVER () AS All_Avg_Salary
 FROM Employee_Salary
 
 ---- --SUBQUIRIES IN FROM

 SELECT Emp_ID, All_Avg_Salary
 FROM (SELECT Emp_ID, Annual_Salary, AVG(Annual_Salary) 
 OVER () AS All_Avg_Salary
 FROM Employee_Salary) Emp
 
 -- --SUBQUIRIES IN WHERE 

 SELECT Emp_ID, Annual_Salary
 FROM Employee_Salary
 WHERE Emp_ID
 IN (SELECT Emp_ID
 FROM EmployeeDemographics
 WHERE Age <30)
 

