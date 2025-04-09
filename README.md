# 🛍️ Retail Sales Analysis with SQL

**Retail Sales Analysis SQL Project** – SQL project I created to practice and demonstrate skills in data cleaning, exploratory data analysis (EDA), and deriving insights using SQL from a real-world retail dataset.

---

## 📦 Overview

**📝 Project Title:** Retail Sales Analysis  
**🗃️ Database Name:** `sql_retail_sales_analysis`

In this project, I have simulated a real-world scenario where a data analyst explores and analyzes retail sales data using SQL. I have created the database, cleaned and prepared the data, performed analysis, and answered key business questions based on sales patterns, customer behavior, and product performance.

---

## 🎯 Objectives

Here’s what I aimed to achieve with this project:

- ✅ Set up and populate a structured SQL database
- ✅ Clean and preprocess retail sales data
- ✅ Perform Exploratory Data Analysis (EDA) with SQL
- ✅ Answer real-world business questions through SQL queries

---

## 🛠️ Tools & Technologies I Used

| Tool               | Purpose                            |
|--------------------|-------------------------------------|
| MySQL              | SQL queries & database management   |
| MySQL Workbench / DBeaver / phpMyAdmin | GUI-based SQL editor |
| CSV File           | Raw data source                     |

---

## 🗂️ Project Structure

```
Retail-Sales-Analysis-Project-SQL/
│
├── Retail Sales Analysis-Project-SQL.csv             # Raw dataset
├── SQL-Query-Retail-Sales-Analysis-Solutions.sql     # SQL for setup, cleaning & analysis
├── SQL-Retail-Sales-Analysis-Questions.sql           # Business questions written in SQL
├── README.md                                          # 📄 You're here!
```

---

## ⚙️ How I Set It Up

1. I cloned or downloaded this repository to my local machine.
2. Opened MySQL Workbench.
3. Created the database with:

```sql
CREATE DATABASE sql_retail_sales_analysis;
```

4. Imported the CSV file into a table named `retail_sales`.
5. Executed the SQL script from `SQL-Query-Retail-Sales-Analysis-Solutions.sql`.
6. Used `SQL-Retail-Sales-Analysis-Questions.sql` to explore business questions and draw insights.

---

## 🧹 Data Cleaning Steps

To make the dataset usable, I:

- Removed records with `NULL` in key fields such as:
  - `transaction_id`, `sale_date`, `sale_time`
  - `gender`, `category`, `quantity`, `cogs`, `total_sale`
- Verified and enforced correct data types
- Cleaned inconsistent values in categorical columns

---

## 📊 What I Found

🔍 **Customer Demographics**  
Customers came from diverse age groups and purchased items from a range of categories like *Clothing* and *Beauty*.

💰 **High-Value Transactions**  
Some transactions exceeded 1000+ in total sales, indicating premium or bulk purchases.

📈 **Sales Trends**  
Monthly patterns revealed peak shopping seasons, offering insight into seasonal demand.

👥 **Customer Insights**  
I identified the top-spending customers and the most popular product categories.

---

## 📑 Reports I Generated

- **📌 Sales Summary:** Total revenue, category-wise breakdown, average sales
- **📅 Trend Analysis:** Monthly sales fluctuations and hourly trends
- **👤 Customer Reports:** Top spenders, unique buyers per category

---

## ✅ What I Learned

Through this project, I deepened my understanding of how SQL can be used to:

- Build and manage a database from scratch
- Clean messy or incomplete data
- Perform EDA using real retail data
- Extract valuable business insights using SQL alone

This project really helped me apply SQL in a business context, and I believe it’s a solid starting point for anyone interested in data analytics.

---

## 👨‍💻 About Me

Hi, I’m **rwtadisingh12** 👋  
I’m exploring data analytics and business intelligence, and this project is part of my journey toward becoming a data analyst. Feel free to connect or check out my other projects!

---

## 🙌 Want to Contribute or Give Feedback?

If you’d like to improve this project, add more insights, or share suggestions:

- Fork the repo
- Open a pull request
- Or just reach out!

I’d love to hear from you!

---

### ⭐ If you liked this project, feel free to star it and share it with others!
