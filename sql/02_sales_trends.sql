USE amazon_project;
GO
SELECT YEAR(OrderDate) AS sales_year, MONTH(OrderDate) AS sales_month,
       COUNT(DISTINCT OrderID) AS orders,
       SUM(TotalAmount) AS recorded_transaction_amount,
       SUM(Quantity) AS units
FROM dbo.amazon_sales
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY sales_year, sales_month;

SELECT YEAR(OrderDate) AS sales_year,
       SUM(TotalAmount) AS recorded_transaction_amount,
       COUNT(DISTINCT OrderID) AS orders
FROM dbo.amazon_sales
GROUP BY YEAR(OrderDate)
ORDER BY sales_year;
