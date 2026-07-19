-- Question: List every customer along with the details (OrderID, Description)
-- of any orders they placed in 2026. Customers with no orders in 2026 should
-- still appear in the list, with the order fields left NULL

SELECT c.[FirstName], c.[LastName], o.[OrderID], o.[Description]
FROM [Customers] c
LEFT JOIN [Orders] o ON o.[CustomerID] = c.[CustomerID] AND o.[OrderDate] >= '2026-01-01';