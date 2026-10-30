# Amazon Sales Analytics

An end-to-end business analytics portfolio project using SQL Server and an interactive dashboard.

> **Dataset disclosure:** This project analyzes a synthetic Amazon-style e-commerce dataset containing 100,000 transaction rows. It is not official Amazon data.

## Project highlights
- 100,000 orders, 43,233 customers, 50 products, 10 brands and 6 categories
- $91.83M recorded transaction amount
- 300,140 units sold
- 74.6% delivered orders
- Analysis of category, brand, product, geography, order status and yearly trends
- SQL window functions for top-product ranking within categories

## Metric definitions and caveats
- Amount is the dataset's recorded `TotalAmount`, not verified net revenue or profit.
- Gross line value is `Quantity * UnitPrice`; it is not profit.
- The synthetic data contains some product/category mapping inconsistencies. Validate these before operational use.

## Contents
- `index.html` — dashboard preview
- `sql/` — SQL Server analysis scripts (to be added)
- `data/` — summarized outputs (to be added)

## Tools
SQL Server (T-SQL), Excel, Power BI, HTML, CSS and JavaScript.
