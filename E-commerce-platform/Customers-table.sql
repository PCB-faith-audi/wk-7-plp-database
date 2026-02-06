CREATE SCHEMA Ecommerce;

USE Ecommerce;

CREATE TABLE Orders (
	OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ProductName VARCHAR(100),
    Quantity INT,
    TotalPrice DECIMAL(10,2)
);