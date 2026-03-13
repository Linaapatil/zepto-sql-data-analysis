# 🛒Zepto Product Data Analysis 

## Project Overview

This project analyzes product data from Zepto using SQL and Power BI to understand pricing, discounts, stock availability, and product value across categories.

The goal of this analysis is to identify high-discount products, revenue opportunities, and pricing patterns using structured queries and interactive visualizations.

---

## Dataset Information

The dataset contains product-level information including:

* Product Name
* Category
* Maximum Retail Price (MRP)
* Discount Percentage
* Discounted Selling Price
* Product Weight
* Available Quantity
* Stock Status

---

## Tools Used

* PostgreSQL
* SQL
* pgAdmin 4
* Power BI

---

## Project Workflow

### 1. Data Exploration

Initial SQL queries were used to explore the dataset:

* Count total records
* Identify product categories
* Check stock availability
* Detect duplicate product entries

### 2. Data Cleaning

Data cleaning steps included:

* Removing invalid records where price was zero
* Converting prices from paisa to rupees
* Checking for null values across important columns

### 3. Business Analysis

Key business questions answered:

* What are the top discounted products?
* Which categories generate the highest estimated revenue?
* What percentage of products are out of stock?
* Which products offer the best price relative to weight?


---

## Key Insights

* Most products remain in stock, with a smaller percentage currently unavailable.
* Certain categories generate significantly higher estimated revenue.
* A few products offer substantially higher discounts compared to others.
* Price-to-weight analysis helps identify better value products.

