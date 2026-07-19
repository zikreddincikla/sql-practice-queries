-- Question: List the names and categories of out-of-stock products

SELECT p.[ProductName], c.[CategoryName]
FROM [Products] p
INNER JOIN [Categories] c ON c.[CategoryID] = p.[CategoryID]
WHERE p.[Stock] IS NULL OR p.[Stock] = 0;