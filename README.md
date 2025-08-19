🛒 Retail Sales Database – SQL Project
📌 Overview

This project demonstrates the design and analysis of a retail sales database using SQL. It focuses on data cleaning, transformation, and analytics to simulate real-world business challenges.

The project highlights how SQL can be applied to handle messy datasets (nulls, duplicates, inconsistent formats) and generate business insights such as top-selling products, store revenue, return rates, and sales trends.
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

🎯 Problem Statement

In real businesses, raw data often contains missing values, duplicates, and inconsistent formats, making it unreliable for decision-making.
The goal of this project was to:

--Build a relational retail database.
--Clean and standardize inconsistent data.
--Generate insights that help understand sales performance, customer behavior, and returns.
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
🔍 Approach

1. Database Design

Created 5 tables:

--prac_cx → Customers
--prac_pro → Products
--prac_ord → Orders
--prac_ord_items → Order Items
--prac_returns → Returns

2. Data Cleaning

--Replaced null values in phone/email with defaults.
--Managed duplicate records.
--Fixed inconsistent date formats with SQL functions.
--Preserved incomplete records for manual review.

3. Analysis & Insights

--Top 3 and bottom 3 selling products.
--Store-wise revenue and return counts.
--Monthly revenue trends across locations.
--Overall return rate with reasons.
--Customer + product + return details.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


📊 Key Insights

--✅ Cleaned dataset ready for analysis.
--📈 Identified sales trends and top-performing stores.
--🔄 Calculated return rates and linked reasons to customers/products.
--🛒 Revealed customer purchasing behavior.
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

🛠️ Tech Stack

SQL Server / PostgreSQL
SQL Concepts: Joins, Aggregations, Window Functions, CTEs, Data Cleaning
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

📂 Files in Repository

freelance_project_create_table.sql → Database schema + sample data + queries
insights_queries.sql → Business insights SQL scripts
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

🚀 Outcome

This project showcases end-to-end SQL skills from database creation to data cleaning and advanced analytics, bridging the gap between raw data and actionable business intelligence.
