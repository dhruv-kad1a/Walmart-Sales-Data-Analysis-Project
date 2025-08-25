# 🛒 Walmart Sales Data Analysis Project

## 📌 Project Overview
This project analyzes Walmart sales data to uncover meaningful business insights.  
It involves **data preprocessing in Jupyter Notebook** and **business problem-solving using PostgreSQL**.  

The dataset is sourced from **Kaggle** and contains transaction-level details such as payment methods, sales categories, customer ratings, and revenue.  

---

## 📂 Project Workflow

### 1. Data Preparation (Python - Jupyter Notebook)
- Imported dataset from Kaggle into Jupyter Notebook.  
- Performed **data exploration and cleaning**:
  - Removed rows with missing values  
  - Dropped duplicate records  
  - Standardized column names to lowercase  
  - Added a new **total column**  
- Connected cleaned dataset to **PostgreSQL** for further analysis.  

### 2. Business Problem Solving (PostgreSQL)
SQL queries were written to solve the following problems:

1. Find different **payment methods**, number of transactions, and quantity sold  
2. Identify the **highest-rated category** in each branch (Branch, Category, Avg Rating)  
3. Determine the **busiest day** for each branch  
4. Calculate **total quantity sold per payment method**  
5. Find **average, minimum, and maximum category rating** per city  
6. Calculate **total profit for each category** using:
      - Total Profit = Unit Price × Quantity × Profit Margin
7. Determine the **most common payment method** for each branch  
8. Categorize sales into **Morning, Afternoon, Evening shifts** and count invoices  
9. Identify **Top 5 branches** with the highest revenue decrease ratio (2023 vs 2022)  

---

## 🛠️ Technologies Used
- **Python** → Pandas, NumPy, Jupyter Notebook  
- **PostgreSQL** → SQL queries for analysis  
- **Kaggle Dataset** → Walmart Sales Data  

---

## 📊 Key Insights
- Different branches prefer different **payment methods**  
- Some product categories consistently achieve **higher ratings**  
- Peak business hours vary between **morning, afternoon, and evening shifts**  
- Certain branches suffered a **major revenue decline in 2023 compared to 2022**  

---



