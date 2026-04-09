--  SET OPERATORS
--SELECT 
--	FirstName AS F,
--	LastName AS L
	
--FROM Sales.Customers

--UNION

--SELECT 
--	FirstName,
--	LastName
--FROM Sales.Employees

--EXERCISE: Combine the data from employeesand customers into one table
--SELECT FirstName
--FROM Sales.Employees

--UNION

----SELECT FirstName
----FROM Sales.Customers

--SELECT FirstName
--FROM Sales.Employees

--UNION ALL

--SELECT FirstName
--FROM Sales.Customers

-- Find the employees who are not customers at the same time.
--SELECT FirstName
--FROM Sales.Employees

--EXCEPT

--SELECT FirstName
--FROM Sales.Customers

--Find the employees who are also customers
--SELECT FirstName
--FROM Sales.Employees

--INTERSECT

--SELECT FirstName
--FROM Sales.Customers

--EXERCISE: Orders are stored in separate tables (Ordres and OrdersArchives).
-- Combine all orders into one report without duplicates.
--SELECT 1 AS SourceTable, * FROM Sales.Orders 
--UNION
--SELECT 0 AS SourceTable, * FROM Sales.OrdersArchive

