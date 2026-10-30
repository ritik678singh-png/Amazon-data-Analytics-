# Power BI Desktop dashboard build

The repository includes a ready-to-open HTML dashboard preview. To create a native editable `.pbix` file in Power BI Desktop:

1. Open Power BI Desktop → Get Data → Text/CSV → select the project dataset.
2. Confirm `OrderDate` is Date; `Quantity` whole number; amount/price/tax/discount/shipping decimal; IDs and category fields text.
3. Load the table and rename it `Amazon`.
4. Use `powerbi_measures.dax` to create the measures.
5. Build KPI cards for recorded transaction amount, orders, customers, units and delivered order rate.
6. Add monthly trend, category, order-status, country and brand visuals.
7. Add slicers for OrderDate, Country, Category, Brand and OrderStatus.
8. Save as `Amazon_Sales_Analytics.pbix`.

A native `.pbix` file requires Power BI Desktop. This repository provides DAX measures and a dashboard preview; it does not claim to contain a prebuilt PBIX.
