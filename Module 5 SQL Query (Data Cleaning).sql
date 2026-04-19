/*
MODULE 5 DATA CLEANING {STRING FUNCTION} - (TRIM, LTRIM, RTRIM, REPLACE, SUBSTRING, LOWER, UPPER)
*/

-- Create a simple table with messy string data
CREATE TABLE Employee_table (
    EmployeeID VARCHAR(50),
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50)
);

-- Insert sample records with extra spaces and inconsistent formatting
INSERT INTO Employee_table VALUES
('E246 ', ' Jimo ', 'Farad  '),
(' E289', ' Austin', '  Beckley '),
('  E265', ' Tomi ', ' Fenades -   Hamza');

-- View the raw data
SELECT *
FROM Employee_table;

---- USING TRIM, LTRIM, RTRIM
-- Remove spaces from both ends
SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM Employee_table;

-- Remove spaces from the right side only
SELECT EmployeeID, RTRIM(EmployeeID) AS IDTRIM
FROM Employee_table;

-- Remove spaces from the left side only
SELECT EmployeeID, LTRIM(EmployeeID) AS IDTRIM
FROM Employee_table;

---- USING REPLACE
-- Clean up Last_Name by removing unwanted substring
SELECT Last_Name, REPLACE(Last_Name, ' Fenades -', '') AS Last_Name_Cleaned 
FROM Employee_table;

---- USING SUBSTRING
-- Extract the first 4 characters of First_Name
SELECT SUBSTRING(First_Name, 1, 4)
FROM Employee_table;

---- USING UPPER AND LOWER
-- Convert names to lowercase
SELECT First_Name, LOWER(First_Name)
FROM Employee_table;

-- Convert names to uppercase
SELECT First_Name, UPPER(First_Name)
FROM Employee_table;

-- Drop the table after testing
DROP TABLE Employee_table;
