-- Question: Find the order containing the most distinct products (distinct
-- ProductID). List the OrderID, the first name of the customer who placed it,
-- and how many distinct products the order contains

SELECT TOP 1 o.[OrderID], c.[FirstName], COUNT(DISTINCT od.[ProductID]) AS [TOP PRODUCT]
FROM [Orders] o
INNER JOIN [Customers] c ON c.[CustomerID] = o.[CustomerID]
INNER JOIN [OrderDetails] od ON od.[OrderID] = o.[OrderID]
GROUP BY o.[OrderID], c.[FirstName]
ORDER BY [TOP PRODUCT] DESC;