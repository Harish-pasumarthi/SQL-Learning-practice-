-- get all customers along with their orders, for only customers who have placed the order.
-- customers and orders tables 
SELECT * FROM customers;
SELECT * FROM orders;

SELECT *
FROM customers
INNER JOIN orders
ON id=customer_id;

EXEC sp_help 'orders';

-- Get all customers along their orders, including those without orders.
SELECT *
FROM customers
LEFT JOIN orders
ON id = customer_id

-- get all customers along with their orders, including orders without matching customers
SELECT *
FROM customers
RIGHT JOIN orders
ON id = customer_id;

-- USE ONY LEFT JOIN. get all customers along with their orders, including orders without matching customers
SELECT *
FROM orders
LEFT JOIN customers
ON customer_id = id;

-- Get all customers and all orders even if there's no match
SELECT * 
FROM customers
FULL JOIN orders
ON id=customer_id;