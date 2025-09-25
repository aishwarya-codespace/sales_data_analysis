# Sales Data Analysis (SQL + Power BI)

## Project Overview
This project demonstrates sales data analysis using **SQL for querying** 
and **Power BI for visualization**.  
The workflow: CSV file → cleaned in Power Query → imported into MySQL (2 tables) → SQL queries → Power BI dashboard.

## Note
The SQL queries in this project were written separately for analysis purposes. In Power BI, the cleaned dataset (from Excel/MySQL) was used directly to build visuals, without connecting queries.

## Database
- **Tables Created:**
  1. `Customer_Purchases` → (Customer_ID, Item_Purchased, Category, Purchase_Amount, Gender, Age, Location, Season)
  2. `Customer_Reviews` → (Customer_ID, Review_Rating, Payment_Method, Discount_Applied)

- Imported cleaned CSV into MySQL via CLI.  
- Wrote SQL queries to analyze customer purchases and reviews.

## SQL Queries
1. Total Sales per Category
2. Average Purchase per Customer
3. Average Purchase with Review Rating
4. Total Sales by Season
5. Total Sales by Season and Category
6. Total Purchase Amount by Location
7. Number of Purchases per Category
8. Top 10 Most Purchased Items
9. Average Purchase by Gender
10. Average Purchase by Age Group
11. Customer Count by Subscription Status
12. Average Purchase vs Subscription Status
13. Average Review Rating per Category
14. Total Discount Applied by Customer
15. Total Purchases by Payment Method
16. Average Purchase per Season
17. Top Customers by Total Spending
18. Items with Highest Average Spending
19. Top 5 Purchase Count by Color
20. Average Purchase by Size

👉 All queries are available in [`sql_queries/`](./all_sql_queries).

## 📊 Power BI Dashboard
Built an interactive dashboard:
- **Clustred Bar Charts** - seasonal sales by category  
- **Clustered Column Charts** - Avg Purchase by subscription status 
- **Stacked Column Chart** - Seasonal total sales,Total sales per category
- **scattered chart** - Average purchase with review rating
- **pie chart** - count of top 5 purchases by color
- **Donut chart** - Purchases by size, purchase amount by item, Customer count by subscription status
- **Area chart** - Average purchase by age group, Average purchase by gender, Total purchase by payment method  
- **Map** - Purchases by Location
- **cards** - Total Sales, Average Sales  
- **KPI Card** - Total Sales vs Target
- **Slicers** - Gender, Age group, Season, Categories  

📂 Dashboard file: [`sales_dashboard.pbix`](./power_BI_report.pbix)

## Workflow
1. Clean raw CSV using Power Query  
2. Import cleaned data into MySQL (2 tables)  
3. Write SQL queries for analysis  
4. Importing the database from sql to power bi 
5. Build dashboard with visuals and KPIs  

---
⭐ **This project highlights SQL querying, data modeling, and Power BI dashboarding skills.**
