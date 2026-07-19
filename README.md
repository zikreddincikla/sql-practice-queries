# SQL Practice

🇬🇧 English | [🇹🇷 Türkçe](README.tr.md)

10 MS SQL practice questions and solutions built around a small e-commerce
database (Customers, Orders, OrderDetails, Products, Categories).

## Schema

Table structure and relationships are defined in [schema.sql](solutions/schema.sql):

- **Customers**: CustomerID (PK), FirstName, LastName, Email, Phone, Address, City
- **Orders**: OrderID (PK), OrderDate, CustomerID (FK), Description
- **OrderDetails**: OrderDetailsID (PK), OrderID (FK), ProductID (FK), Quantity
- **Products**: ProductID (PK), ProductName, CategoryID (FK), UnitPrice, Stock
- **Categories**: CategoryID (PK), CategoryName

Relationships: `Customers 1—N Orders`, `Orders 1—N OrderDetails`, `Products 1—N OrderDetails`, `Categories 1—N Products`.

## Questions

| # | Question | Solution |
|---|----------|----------|
| 1 | Find how many distinct categories each customer has purchased from | [01.sql](solutions/01.sql) |
| 2 | Find the customers who spent the most money | [02.sql](solutions/02.sql) |
| 3 | List the names and categories of out-of-stock products | [03.sql](solutions/03.sql) |
| 4 | List name, email, phone, and address of customers who never placed an order | [04.sql](solutions/04.sql) |
| 5 | List categories with average quantity sold > 5, with total quantity sold | [05.sql](solutions/05.sql) |
| 6 | List every customer with their 2026 orders, if any (unmatched customers still shown, order fields NULL) | [06.sql](solutions/06.sql) |
| 7 | List the most expensive product, its category, and price, per category | [07.sql](solutions/07.sql) |
| 8 | Find the order containing the most distinct products | [08.sql](solutions/08.sql) |
| 9 | List each category's total 2026 revenue, sorted highest to lowest | [09.sql](solutions/09.sql) |
| 10 | List customers with more than 2 orders, sorted by order count descending | [10.sql](solutions/10.sql) |

## SQL concepts used

- `INNER JOIN` / `LEFT JOIN`
- `GROUP BY` / `HAVING`
- Aggregate functions (`COUNT`, `SUM`, `AVG`, `MAX`)
- Correlated subquery (Question 7)
- `TOP` to get the first row of a sorted result (Question 8)
- `ORDER BY` for sorting

## Notes

These queries are written in T-SQL (SQL Server) syntax (note the `[]` bracket
identifiers and the `TOP` clause). If you're using a different database engine
(PostgreSQL, MySQL, etc.), minor syntax adjustments will be needed — for
example, `LIMIT 1` instead of `TOP 1`.
