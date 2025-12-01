# Sales Data Analysis (SQL Project)

This project contains SQL-based analysis of a retail sales dataset.  
It includes data exploration, KPI calculation, customer insights, category analysis, 
and solving 10 real business questions using SQL.

## 📌 Dataset Table
**Table Name:** `book1sk`  
The dataset contains columns such as:
- transactions_id  
- customer_id  
- category  
- quantity  
- age  
- sale_date  
- sale_time  
- total_sale  

## 🚀 Key Analyses & Business Questions Solved

### **🔹 1. Total number of rows / total sales records**
Used to get complete dataset size.

### **🔹 2. Total number of customers**
Counted distinct customers to understand customer base.

### **🔹 3. Total number of unique product categories**
Helpful for understanding product diversity.

---

## 🧠 **Business Problems & SQL Solutions**

### **Q1️⃣ — Retrieve all sales made on 2022-11-05**
Finds all transactions for a specific date.

### **Q2️⃣ — Transactions where category = 'Clothing' and quantity > 4**
Filters high-quantity clothing orders.

### **Q3️⃣ — Total sales and total orders per category**
Aggregates category performance.

### **Q4️⃣ — Average age of customers who purchased 'Beauty' category**
Calculated using:
- Direct average  
- Correct method: unique customers only  

### **Q5️⃣ — All transactions with total_sale > 1000**
Identifies high-value purchases.

### **Q7️⃣ — Average sale per month + Best selling month of each year**
Performed using:
- Monthly average  
- Window function (RANK) to find best month per year  

### **Q8️⃣ — Top 5 customers by highest total sales**
Ranks customers based on spending.

### **Q9️⃣ — Unique customers per category**
Shows customer engagement category-wise.

### **Q🔟 — Order count per shift (Morning, Afternoon, Evening, Night)**
Shift logic based on sale_time:
- Morning < 12  
- Afternoon 12–17  
- Evening 17–20  
- Night > 20  

---

## 🛠 Technologies Used
- **MySQL**
- Aggregate Functions
- Date & Time Functions
- Window Functions (RANK)
- Grouping & Filtering
- Data Cleaning (column rename)

---

## 📁 File Included
`sales data analysis.sql`  
(Contains all SQL queries and solutions)

---

## 🎯 Project Purpose
This project demonstrates core SQL skills required for:
- Data Analyst  
- Business Analyst  
- Product Analyst  

It highlights the ability to clean data, write business-driven queries, analyze customer behaviour, and generate actionable insights.

---

## 👤 Author
 **Shubham**

