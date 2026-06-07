# 🏠 Lease Management System - SQL Project

## 📌 Project Overview

The Lease Management System is a comprehensive SQL-based database project designed to manage rental properties, tenants, lease agreements, rent payments, and maintenance activities.

This project demonstrates database design, data analysis, reporting, business intelligence queries, data cleaning, feature engineering, and advanced SQL concepts commonly used in real-world property management systems.

---

## 🎯 Objectives

- Manage property and tenant information.
- Track lease agreements and rental payments.
- Monitor maintenance requests and expenses.
- Analyze revenue and property performance.
- Generate business insights using SQL queries.
- Implement database automation using procedures and triggers.

---

## 🛠️ Technologies Used

- MySQL
- SQL
- Relational Database Management System (RDBMS)

---

## 🗄️ Database Schema

The project consists of the following tables:

### Properties
Stores rental property details.

| Column |
|----------|
| property_id |
| property_name |
| city |
| property_type |
| rent_amount |

### Tenants
Stores tenant information.

| Column |
|----------|
| tenant_id |
| tenant_name |
| phone |
| email |
| join_date |

### Lease_Agreements
Stores lease contract details.

| Column |
|----------|
| lease_id |
| property_id |
| tenant_id |
| start_date |
| end_date |
| monthly_rent |
| status |

### Lease_Payments
Stores rental payment transactions.

| Column |
|----------|
| payment_id |
| lease_id |
| payment_date |
| amount |
| payment_method |

### Maintenance
Stores property maintenance requests.

| Column |
|----------|
| request_id |
| property_id |
| issue |
| cost |
| status |

### Audit_Log
Tracks payment activities using triggers.

---

## 📊 Features Implemented

### Database Design
- Primary Keys
- Foreign Keys
- Referential Integrity
- Relational Schema Design

### Data Management
- Insert Records
- Update Records
- Delete Records
- Data Cleaning Operations

### Rental Management
- Lease Tracking
- Tenant Management
- Property Management
- Payment Tracking

### Maintenance Management
- Maintenance Requests
- Cost Analysis
- Pending Issue Tracking

---

## 📈 SQL Concepts Demonstrated

### Joins
- INNER JOIN
- LEFT JOIN

### Aggregate Functions
- SUM()
- AVG()
- MAX()
- MIN()
- COUNT()

### Window Functions
- RANK()
- DENSE_RANK()
- ROW_NUMBER()
- LAG()
- Running Totals

### Common Table Expressions (CTE)
- Revenue Analysis
- Lease Performance Evaluation

### Subqueries
- Above Average Rent Detection
- Highest Revenue Property Analysis

### String Functions
- POSITION()
- SUBSTR()
- REPLACE()
- REVERSE()

### Date Functions
- DATEDIFF()
- MONTH()
- YEAR()

### Stored Procedures
- Top Revenue Generating Properties

### Triggers
- Automated Payment Audit Logging

---

## 📊 Business Analysis Queries

### Revenue Analysis
- Total Revenue Generated
- Revenue Per Lease
- Revenue Per Tenant
- Monthly Revenue Trends
- Yearly Revenue Trends

### Property Analysis
- Most Profitable Property
- Least Profitable Property
- Property Ranking by Rent
- Vacancy Analysis

### Tenant Analysis
- Tenant Lifetime Value (CLV)
- Most Active Tenants
- Tenants with Multiple Leases
- Tenants with No Payments

### Location Analysis
- City-wise Revenue
- City-wise Property Distribution

### Maintenance Analysis
- Total Maintenance Cost
- Most Expensive Maintenance Issue
- Pending Maintenance Requests

### Time Series Analysis
- Monthly Rent Collection
- Running Revenue Calculation
- Lease Expiry Prediction

---

## 🤖 Data Science & Analytics Features

The project includes SQL-based analytics techniques such as:

### Feature Engineering
Generated tenant-level features:

- Total Leases
- Total Rent Paid
- Average Payment Amount

### Customer Lifetime Value (CLV)
Identifies high-value tenants.

### Lease Expiry Prediction
Tracks upcoming lease expirations.

### Revenue Forecast Preparation
Creates datasets suitable for future predictive analytics projects.

---

## 🚀 How to Run

### Create Database

```sql
CREATE DATABASE LEASE_DB;
USE LEASE_DB;
```

### Execute SQL Script

Run the complete SQL script:

```sql
source Lease_Management_Project.sql;
```

or execute directly in:

- MySQL Workbench
- phpMyAdmin
- DBeaver
- SQL Server (with minor syntax modifications)

---

## 📂 Project Structure

```
Lease-Management-System/
│
├── Lease_Management_Project.sql
└── README.md
 
```

---

## 📈 Sample Insights Generated

✔ Total Revenue Collected

✔ Top Paying Tenants

✔ Highest Revenue Property

✔ Monthly Revenue Trends

✔ Tenant Lifetime Value (CLV)

✔ Maintenance Cost Analysis

✔ Lease Expiry Monitoring

✔ Property Vacancy Analysis

---

## 🔮 Future Enhancements

- Power BI Dashboard Integration
- Python Analytics Integration
- Rent Prediction Model
- Tenant Churn Prediction
- Automated Email Notifications
- Property Management Web Application

---

## 👨‍💻 Author

**R. Suresh Krishna**

📧 Email: rsureshkrishna02@gmail.com

🔗 LinkedIn: https://www.linkedin.com/in/sur-kri104

---

⭐ If you found this project useful, consider giving it a star on GitHub.
