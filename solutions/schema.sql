-- Database schema (SQL Server / T-SQL)

CREATE TABLE [Customers] (
    [CustomerID] INT PRIMARY KEY IDENTITY(1,1),
    [FirstName]  NVARCHAR(50) NOT NULL,
    [LastName]   NVARCHAR(50) NOT NULL,
    [Email]      NVARCHAR(100),
    [Phone]      NVARCHAR(20),
    [Address]    NVARCHAR(200),
    [City]       NVARCHAR(50)
);

CREATE TABLE [Categories] (
    [CategoryID]   INT PRIMARY KEY IDENTITY(1,1),
    [CategoryName] NVARCHAR(50) NOT NULL
);

CREATE TABLE [Products] (
    [ProductID]   INT PRIMARY KEY IDENTITY(1,1),
    [ProductName] NVARCHAR(100) NOT NULL,
    [CategoryID]  INT NOT NULL,
    [UnitPrice]   DECIMAL(10,2) NOT NULL,
    [Stock]       INT,
    CONSTRAINT FK_Products_Categories FOREIGN KEY ([CategoryID])
        REFERENCES [Categories]([CategoryID])
);

CREATE TABLE [Orders] (
    [OrderID]     INT PRIMARY KEY IDENTITY(1,1),
    [OrderDate]   DATE NOT NULL,
    [CustomerID]  INT NOT NULL,
    [Description] NVARCHAR(200),
    CONSTRAINT FK_Orders_Customers FOREIGN KEY ([CustomerID])
        REFERENCES [Customers]([CustomerID])
);

CREATE TABLE [OrderDetails] (
    [OrderDetailsID] INT PRIMARY KEY IDENTITY(1,1),
    [OrderID]        INT NOT NULL,
    [ProductID]      INT NOT NULL,
    [Quantity]       INT NOT NULL,
    CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY ([OrderID])
        REFERENCES [Orders]([OrderID]),
    CONSTRAINT FK_OrderDetails_Products FOREIGN KEY ([ProductID])
        REFERENCES [Products]([ProductID])
);