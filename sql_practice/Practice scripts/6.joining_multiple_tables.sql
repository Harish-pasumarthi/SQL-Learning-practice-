--SELECT *
--FROM INFORMATION_SCHEMA.TABLES
--WHERE TABLE_TYPE = 'BASE TABLE';

-- QUESTION: using SalesDB, Retrieve a list of alll orders, along with the related customers, product, and employee details.
-- For each order, display:
-- Order ID
-- Customer's name
-- Product name
-- sales amount
-- Product price
-- Salesperson's name
SELECT *
FROM INFORMATION_SCHEMA.TABLES;

SELECT *
FROM Sales.Customers;
SELECT *
FROM Sales.Employees;
SELECT *
FROM Sales.Orders;
SELECT *
FROM Sales.Products;

SELECT *
FROM Sales.OrdersArchive
--

SELECT O.OrderID, C.FirstName AS CustomerName, P.Product, O.Sales, P.Price, E.FirstName AS SalesPerson_Name
FROM Sales.Orders as O

LEFT JOIN Sales.Customers as C
ON O.CustomerID = C.CustomerID

LEFT JOIN Sales.Products as P
ON P.ProductID = O.ProductID

LEFT JOIN Sales.Employees as E
ON E.EmployeeID = O.SalesPersonID

LEFT JOIN Sales.OrdersArchive as OA
ON OA.OrderID = O.OrderID