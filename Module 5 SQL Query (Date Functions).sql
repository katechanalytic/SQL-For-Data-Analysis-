/*
MODULE 5 DATE FUNCTIONS
*/
SELECT CURRENT_DATE

WHERE order_date = CURRENT_DATE

--Extracts a specific component (such as year or month) from a date.
SELECT DATE_PART('year', order_date)
FROM orders;

--Calculates the difference between two dates.
SELECT DATE_DIFF('day', order_date, delivery_date)
FROM orders;

--The EXTRACT() function retrieves specific parts of a date.
SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  EXTRACT(DAY FROM order_date) AS day
FROM orders;





