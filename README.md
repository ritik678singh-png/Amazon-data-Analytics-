# Amazon Sales Analytics — Portfolio Project

An end-to-end business analytics project built around a **100,000-row synthetic Amazon-style e-commerce dataset**. This is an independent portfolio exercise and is not official Amazon data or affiliated with Amazon.

## Project dashboard
Open the live dashboard: [Amazon Sales Analytics](https://ritik678singh-png.github.io/Amazon-data-Analytics-/)

## Key findings
- 100,000 transaction rows and 100,000 unique OrderIDs
- 43,233 unique customers, 50 products, 10 brands, 1,999 sellers
- 6 categories and 5 countries
- Recorded transaction amount: **$91,825,647.92**
- Gross line value (Quantity × UnitPrice): **$91,021,212.99**
- Units sold: **300,140**
- Average recorded amount per order: **$918.26**
- Delivered orders: **74.6%**
- Cancelled + returned orders: **6.1%**
- Date range: 2020-01-01 to 2024-12-29

## Repository structure
- `index.html` — dashboard landing page / preview
- `sql/` — SQL Server schema, KPI and quality checks, sales trends, category/product/brand, customer/geography/payment analysis
- `data/` — verified category, country, yearly, status, brand and top-product summary CSVs
- `powerbi/` — DAX measures and Power BI build instructions
- `report/` — business insights summary

## SQL workflow
1. Create the `amazon_project` database and `dbo.amazon_sales` table using `sql/00_create_database_and_table.sql`.
2. Import the source CSV into `dbo.amazon_sales` using the 20-column schema in the create-table script.
3. Run the remaining scripts in `sql/` to reproduce the analysis.
4. Open `powerbi/POWER_BI_BUILD_GUIDE.md` to build the Power BI report.

## Metric caveats
- `SUM(TotalAmount)` is described as **recorded transaction amount**, not audited net revenue.
- `SUM(Quantity * UnitPrice)` is **gross line value**, not profit.
- Cost of goods, operating expenses and margin data are not available.
- Validate the relationship between TotalAmount, Discount, Tax and ShippingCost before treating it as net sales.
- Some synthetic product/category pairings are semantically inconsistent; validate the product master before drawing merchandising conclusions.

## Tools
SQL Server (T-SQL), Excel, Power BI, DAX, HTML, CSS and JavaScript.

## Dataset disclosure
The underlying transaction dataset is synthetic. Summary CSVs are included in this repository; the full source CSV is not currently hosted here.
