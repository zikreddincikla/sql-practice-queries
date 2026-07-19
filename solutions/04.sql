-- Question: List the first name, last name, email, phone, and address of
-- customers who have never placed an order

SELECT c.[FirstName], c.[LastName], c.[Email], c.[Phone], c.[Address]
FROM [Customers] c
LEFT JOIN [Orders] o ON o.[CustomerID] = c.[CustomerID]
WHERE o.[CustomerID] IS NULL;