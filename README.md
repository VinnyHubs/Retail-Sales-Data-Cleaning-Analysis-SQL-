📝 Project Description

This project focuses on building and analyzing a retail sales database while tackling the real-world challenges of messy and inconsistent data. In many organizations, raw data often comes with missing values, duplicate records, irregular date formats, and incomplete information, making it difficult to derive accurate business insights. The aim of this project was to design a relational database, apply data cleaning techniques, and generate valuable insights that can support better decision-making in a retail environment.

The database was designed using five interconnected tables:

Customers (prac_cx) – storing customer details with intentional duplicates, missing emails, phone numbers, and inconsistent signup dates.

Products (prac_pro) – maintaining product catalog with categories, prices, and stock levels.

Orders (prac_ord) – containing customer orders with multiple inconsistent date formats.

Order Items (prac_ord_items) – recording product-level quantities per order.

Returns (prac_returns) – tracking returned items with reasons and irregular return dates.

After designing the schema and populating it with realistic yet messy data, the project moved to the data cleaning stage. Key cleaning tasks included:

Replacing null phone numbers and emails with standardized defaults.

Identifying and handling duplicate customer records.

Fixing inconsistent date formats using SQL functions and storing them in a cleaned column.

Preserving records with both email and phone missing as exceptions for further manual review.

Once the dataset was standardized, advanced SQL queries were written to generate business insights, such as:

Identifying the top 3 and bottom 3 selling products.

Analyzing store-wise sales performance and returns.

Calculating the overall return rate and examining reasons for product returns.

Tracking monthly revenue trends across store locations.

Providing detailed insights at the customer-product level for returned orders.

Through this project, I strengthened my expertise in SQL (joins, aggregations, CTEs, window functions, and conditional logic) while simulating challenges faced in real business scenarios. The outcome was a cleaned, analysis-ready dataset capable of providing meaningful insights into customer behavior, sales performance, and operational efficiency.

Overall, this project demonstrates the end-to-end process of data cleaning, transformation, and analytics in SQL, bridging the gap between raw data and actionable business intelligence.
