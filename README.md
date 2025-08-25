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

