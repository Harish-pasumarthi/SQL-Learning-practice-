-- show all customers, concat first name with country and strore it another col
--SELECT * FROM customers;

--SELECT 
--	CONCAT(first_name, country) AS name_country
--FROM customers;
-----------------------------

-- convert the first_nmae into lowercase
--SELECT LOWER(first_name) AS first_name
--FROM customers
-----------------------------

-- remove spaces form first name
--SELECT TRIM(first_name) AS trimed_names FROM customers;
-----------------------------

-- Remove dashes (-) from phone number
--SELECT REPLACE(order_id, '1', '2') AS new_order FROM orders
------------------------------

-- calculate first name each customers first_name
--SELECT
--	first_name,
--	LEN(first_name) AS len_first_name
--FROM customers; 
------------------------------

--Extract first 2 and last 2 characters from the first name
--SELECT 
--	first_name,
--	LEFT(first_name, 2) AS first_2,
--	RIGHT(first_name, 2) AS last_2
--FROM customers; 
-------------------------------

-- Retrive a list of all customers first name after removing the first characters
--SELECT 
--	first_name,
--	SUBSTRING(first_name, 2, LEN(first_name)-1)
--FROM customers;

---------------------------------
SELECT 3.520,
ROUND(3.520,1)