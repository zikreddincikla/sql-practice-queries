-- Question: List each category name (CategoryName) along with the total
-- revenue it generated in 2026. Sort from the highest revenue to the lowest

SELECT c.[CategoryName], SUM(p.[UnitPrice] * od.[Quantity]) AS [Total]
FROM [Categories] c
INNER JOIN [Products] p ON p.[CategoryID] = c.[CategoryID]
INNER JOIN [OrderDetails] od ON od.[ProductID] = p.[ProductID]
INNER JOIN [Orders] o ON o.OrderID = od.[OrderID] AND o.[OrderDate] >= '2026-01-01'
GROUP BY c.[CategoryName]
ORDER BY [Total] DESC;
