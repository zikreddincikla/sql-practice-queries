-- Question: Find how many distinct categories each customer has purchased from

SELECT c.[FirstName], c.[LastName], COUNT(DISTINCT p.[CategoryID]) AS [Total Category]
FROM [Customers] c
INNER JOIN [Orders] o ON o.[CustomerID] = c.[CustomerID]
INNER JOIN [OrderDetails] od ON od.[OrderID] = o.[OrderID]
INNER JOIN [Products] p ON p.[ProductID] = od.[ProductID]
GROUP BY c.[FirstName], c.[LastName];