-- Question: Find the customers who spent the most money

SELECT c.[FirstName], c.[LastName], SUM(od.[Quantity] * p.[UnitPrice]) AS [Total Price]
FROM [Customers] c
INNER JOIN [Orders] o ON o.[CustomerID] = c.[CustomerID]
INNER JOIN [OrderDetails] od ON od.[OrderID] = o.[OrderID]
INNER JOIN [Products] p ON p.[ProductID] = od.[ProductID]
GROUP BY c.[FirstName], c.[LastName];