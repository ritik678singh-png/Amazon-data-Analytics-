USE amazon_project;
GO
SELECT COUNT(*) AS rows, COUNT(DISTINCT OrderID) AS orders,
       COUNT(DISTINCT CustomerID) AS customers,
       COUNT(DISTINCT ProductID) AS products,
       COUNT(DISTINCT SellerID) AS sellers,
       MIN(OrderDate) AS first_order, MAX(OrderDate) AS last_order
FROM dbo.amazon_sales;

SELECT OrderStatus, COUNT(DISTINCT OrderID) AS orders,
       SUM(TotalAmount) AS recorded_amount
FROM dbo.amazon_sales GROUP BY OrderStatus
ORDER BY orders DESC;

SELECT COUNT(*) AS duplicate_full_rows
FROM (
    SELECT OrderID, OrderDate, CustomerID, ProductID, SellerID,
           Quantity, UnitPrice, Discount, Tax, ShippingCost, TotalAmount,
           COUNT(*) AS n
    FROM dbo.amazon_sales
    GROUP BY OrderID, OrderDate, CustomerID, ProductID, SellerID,
             Quantity, UnitPrice, Discount, Tax, ShippingCost, TotalAmount
    HAVING COUNT(*) > 1
) d;
