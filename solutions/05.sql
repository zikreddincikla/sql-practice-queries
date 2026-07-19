-- Question: List the categories whose average quantity sold per order line is
-- greater than 5, along with the total quantity sold in each category

SELECT c.[CategoryName], SUM(od.[Quantity]) AS [Total]
FROM [OrderDetails] od
INNER JOIN [Products] p ON p.[ProductID] = od.[ProductID]
INNER JOIN [Categories] c ON c.[CategoryID] = p.[CategoryID]
GROUP BY c.[CategoryName]
HAVING AVG(od.Quantity) > 5;