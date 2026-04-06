-- Get all customers who haven't placed any order
SELECT *
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id
WHERE orders.customer_id IS NULL;
SELECT * FROM customers
SELECT * FROM orders

 -- Get all orders without matching customers
 SELECT *
 FROM customers AS c
 RIGHT JOIN orders AS o
 ON o.customer_id = c.id
 WHERE c.id IS NULL;

 -- Get all orders without matching customers (Using LEFT JOIN)
 SELECT *
 FROM orders AS o
 LEFT JOIN customers AS c
 ON o.customer_id = c.id
 WHERE c.id IS NULL;

-- Find Customers without orders and orders without customers
SELECT  * 
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE
	c.id IS NULL
	OR
	o.customer_id IS NULL;

-- Get all customers along with their orders, but only for customers who have placed an order (without using INNER JOIN)
SELECT *
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id = o.customer_id;

-- Generate all possible combinations of customers to orders
SELECT *
FROM customers
CROSS JOIN orders;