-- Question: List the first name (FirstName), last name (LastName), and total
-- number of orders for customers who have placed more than 2 orders in total.
-- Sort from the highest order count to the lowest

SELECT c.[FirstName], c.[LastName], COUNT(o.[CustomerID]) AS [Total]
FROM [Customers] c
INNER JOIN [Orders] o ON o.[CustomerID] = c.[CustomerID]
GROUP BY c.[FirstName], c.[LastName]
HAVING COUNT(o.[CustomerID]) > 2
ORDER BY [Total] DESC;
