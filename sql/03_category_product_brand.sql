USE amazon_project;
GO
SELECT Category, COUNT(DISTINCT OrderID) AS orders,
       SUM(Quantity) AS units,
       SUM(Quantity * UnitPrice) AS gross_line_value,
       SUM(TotalAmount) AS recorded_transaction_amount
FROM dbo.amazon_sales
GROUP BY Category
ORDER BY recorded_transaction_amount DESC;

WITH product_sales AS (
    SELECT Category, ProductName,
           SUM(Quantity * UnitPrice) AS gross_line_value,
           SUM(Quantity) AS units
    FROM dbo.amazon_sales
    GROUP BY Category, ProductName
),
ranked AS (
    SELECT *, RANK() OVER(PARTITION BY Category ORDER BY gross_line_value DESC) AS rnk
    FROM product_sales
)
SELECT Category, ProductName, gross_line_value, units
FROM ranked WHERE rnk = 1 ORDER BY Category;

SELECT Brand, SUM(Quantity * UnitPrice) AS gross_line_value,
       COUNT(DISTINCT OrderID) AS orders
FROM dbo.amazon_sales GROUP BY Brand
ORDER BY gross_line_value DESC;
