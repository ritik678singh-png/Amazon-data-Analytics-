USE amazon_project;
GO
WITH customer_sales AS (
    SELECT CustomerID, MAX(CustomerName) AS CustomerName,
           SUM(TotalAmount) AS recorded_amount,
           COUNT(DISTINCT OrderID) AS orders
    FROM dbo.amazon_sales GROUP BY CustomerID
)
SELECT TOP (20) * FROM customer_sales ORDER BY recorded_amount DESC;

SELECT Country, COUNT(DISTINCT OrderID) AS orders,
       SUM(TotalAmount) AS recorded_amount
FROM dbo.amazon_sales GROUP BY Country ORDER BY recorded_amount DESC;

SELECT PaymentMethod, COUNT(DISTINCT OrderID) AS orders,
       SUM(TotalAmount) AS recorded_amount
FROM dbo.amazon_sales GROUP BY PaymentMethod
ORDER BY orders DESC;
