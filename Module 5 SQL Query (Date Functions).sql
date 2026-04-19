/*
MODULE 5 DATE FUNCTIONS
*/

-- Get the current system date
SELECT CURRENT_DATE;

-- Example: filter orders placed today
SELECT *
FROM orders
WHERE order_date = CURRENT_DATE;

-- Extract specific components (year, month, day) from a date
SELECT DATE_PART('year', order_date) AS Order_Year
FROM orders;

-- Calculate the difference between two dates (delivery minus order date)
-- Note: In many SQL dialects, use DATEDIFF instead of DATE_DIFF
SELECT DATEDIFF(day, order_date, delivery_date) AS Days_To_Delivery
FROM orders;

-- Using EXTRACT to break down a date into parts
SELECT
  EXTRACT(YEAR FROM order_date) AS Year,
  EXTRACT(MONTH FROM order_date) AS Month,
  EXTRACT(DAY FROM order_date) AS Day
FROM orders;






