SELECT * FROM customers

-- Find the avg score for each country considering only customers with a score not equal to 0
-- And return only those countries with an average score greater than 430
SELECT 
	country,AVG(score) AS avg_score
FROM customers
WHERE (score>0)
GROUP BY country
HAVING (AVG(score)>430)

-- Return unique list of all countries
SELECT DISTINCT
country
FROM customers

-- how the TOP works
SELECT TOP(2) *
FROM customers;

-- Retrive top 3 customers with highest scores
SELECT TOP(3) *
FROM customers
ORDER BY score DESC

-- Get the two most recent orders
SELECT *
FROM orders

SELECT TOP(2) *
FROM orders
ORDER BY order_date DESC

