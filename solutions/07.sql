-- Question: List the name (ProductName), category (CategoryName), and price
-- (UnitPrice) of the most expensive product in each category

SELECT p.[ProductName], c.[CategoryName], p.[UnitPrice]
FROM [Products] p
INNER JOIN [Categories] c ON c.[CategoryID] = p.[CategoryID]
WHERE p.[UnitPrice] = (
    SELECT MAX(sub_p.[UnitPrice])
    FROM [Products] sub_p
    WHERE sub_p.[CategoryID] = p.[CategoryID]
);