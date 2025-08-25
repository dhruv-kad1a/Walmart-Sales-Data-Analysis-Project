# 🛒 Walmart Sales Data Analysis Project Python + SQL
## 📌 Project Overview
This project analyzes Walmart sales data to uncover meaningful business insights. It involves data preprocessing in Jupyter Notebook and business problem-solving using PostgreSQL.
The dataset is sourced from Kaggle and represents transaction-level details such as payment methods, sales categories, customer ratings, and revenue.

## 📂 Project Workflow
1. Data Preparation (Python - Jupyter Notebook)
  * Imported dataset from Kaggle into Jupyter Notebook.
  * Performed data exploration and cleaning:
    * Removed rows with missing values.
    * Dropped duplicate records.
    * Standardized column names to lowercase.
    * Added a new total column.
  * Connected cleaned dataset to PostgreSQL for further analysis.

2. Business Problem Solving (PostgreSQL)
Key SQL queries written to answer real-world business questions:
 1. Find different payment methods and number of transactions, quantity sold.
 2. Identify the highest-rated category in each branch (Branch, Category, Avg Rating).
 3. Determine the busiest day for each branch based on transactions.
 4. Calculate total quantity sold per payment method.
 5. Find average, minimum, and maximum category rating per city.
 6. Calculate total profit for each category using formula:
     Total Profit=Unit Price×Quantity×Profit Margin
 7. Determine the most common payment method for each branch.
 8. Categorize sales into Morning, Afternoon, Evening shifts and count invoices.
 9. Identify top 5 branches with the highest revenue decrease ratio (2023 vs 2022).
