# 🛍️ Retail Sales Analysis with SQL

Welcome to the **Retail Sales Analysis SQL Project** – a beginner-friendly project aimed at building and showcasing your SQL skills by exploring, cleaning, and analyzing real-world retail data.

---

## 📦 Overview

**📝 Project Title:** Retail Sales Analysis  
**🗃️ Database Name:** `sql_retail_sales_analysis`

This project simulates a real-life scenario where a business analyst uses SQL to derive insights from retail sales data. You'll create a database, clean the data, perform exploratory analysis, and answer key business questions — all using SQL.

Perfect for anyone looking to get hands-on practice in SQL for data analysis!

---

## 🎯 Objectives

- ✅ Create and set up a structured SQL database
- ✅ Clean and preprocess the retail sales data
- ✅ Perform Exploratory Data Analysis (EDA) with SQL
- ✅ Extract actionable business insights using SQL queries

---

## 🛠️ Tools & Technologies

| Tool               | Purpose                            |
|--------------------|-------------------------------------|
| MySQL              | SQL queries & database management   |
| MySQL Workbench / DBeaver / phpMyAdmin | GUI-based SQL execution |
| CSV File           | Data source                         |

---

## 🗂️ Folder Structure

```
Retail-Sales-Analysis-Project-SQL/
│
├── Retail Sales Analysis-Project-SQL.csv             # Raw dataset
├── SQL-Query-Retail-Sales-Analysis-Solutions.sql     # SQL for data setup, cleaning, and insights
├── SQL-Retail-Sales-Analysis-Questions.sql           # Bonus: Business questions in SQL
├── README.md                                          # 📄 You're here!
```

---

## ⚙️ Setup Instructions

1. Clone or download this repository.
2. Open MySQL or your preferred SQL editor.
3. Create the database:

```sql
CREATE DATABASE sql_retail_sales_analysis;
```

4. Import the dataset (`Retail Sales Analysis-Project-SQL.csv`) into a table named `retail_sales`.
5. Execute the SQL script in `SQL-Query-Retail-Sales-Analysis-Solutions.sql` for data cleaning and analysis.
6. Optionally, explore business questions using `SQL-Retail-Sales-Analysis-Questions.sql`.

---

## 🧹 Data Cleaning Summary

To ensure data quality, the following steps were taken:

- Removed records with `NULL` in:
  - `transaction_id`, `sale_date`, `sale_time`
  - `gender`, `category`, `quantity`, `cogs`, `total_sale`
- Validated data types and relationships
- Ensured consistent category and gender values

---

## 📊 Key Findings

🔍 **Customer Demographics**  
Customers span a wide age range, with a good gender distribution and interest across multiple categories, especially *Clothing* and *Beauty*.

💰 **High-Value Transactions**  
Numerous transactions exceeded a total sale value of 1000+, indicating high-spending customers or bulk purchases.

📈 **Sales Trends**  
Sales vary significantly by month, revealing seasonal patterns and peak shopping periods.

👥 **Customer Insights**  
Top customers were identified based on total spend, and the most purchased product categories were highlighted.

---

## 📑 Reports Generated

- **📌 Sales Summary:** Total transactions, revenue, and sales per category
- **📅 Trend Analysis:** Monthly sales trends and time-based patterns
- **👤 Customer Analysis:** Top spenders, repeat customers, and unique customers per category

---

## ✅ Conclusion

This project showcases how SQL can be used to:

- Build and manage a retail sales database
- Perform efficient data cleaning
- Explore datasets using analytical SQL queries
- Answer real-world business questions

These techniques form the core of any data analyst’s skill set, and this project provides a great foundation for further learning in analytics and BI.

---

## 👨‍💻 Author

**rwtadisingh12**

---

## 🙌 Contributions & Feedback

Contributions are welcome!  
If you’d like to add more queries, optimize scripts, or enhance analysis — feel free to fork this repo and open a pull request. Feedback and suggestions are also appreciated!

---

### ⭐ If you found this helpful, don’t forget to star the repo!
