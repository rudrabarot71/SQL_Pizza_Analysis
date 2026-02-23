



# SQL Revenue & Sales Analysis – Pizza Business

## Project Overview

This project analyzes transactional sales data from a pizza business using SQL. The objective is to extract actionable business insights from raw order data and demonstrate advanced SQL proficiency through structured queries, aggregations, window functions, and analytical breakdowns.

The analysis focuses on revenue performance, demand patterns, product contribution, and operational optimization opportunities.

---

## Dataset Overview

The analysis is based on four relational tables:

* **orders** – Order-level transaction records (date, time, order ID)
* **order_details** – Line-item level quantity data
* **pizzas** – Pricing and size information
* **pizza_types** – Category and product-level attributes

These tables were joined to compute revenue, demand metrics, category performance, and time-based trends.

---

# Key Findings

### 1. Category Revenue Contribution

* **Classic pizzas contributed 26.91% of total revenue**, making it the highest-performing category.
* Supreme followed at 25.46%, Chicken at 23.96%, and Veggie at 23.68%.

This indicates relatively balanced revenue distribution with slight dominance from the Classic segment.

---

### 2. Top Revenue-Generating Products

* **Thai Chicken Pizza generated $43,434 in revenue**, ranking #1.
* Barbecue Chicken Pizza generated $42,768.
* California Chicken Pizza generated $41,409.

A small subset of products drives a significant portion of total revenue.

---

### 3. Revenue Baseline

* **Total Revenue:** $817,860
* This serves as a performance benchmark for future growth measurement.

---

### 4. Daily Demand Baseline

* **Average daily pizza demand:** 138 pizzas

This provides a stable operational reference point for forecasting, inventory procurement, and staffing decisions.

---

### 5. Peak Demand Timing

* **Peak ordering hour:** 12 PM
* **Total orders at peak hour:** 2,520

There is strong lunchtime demand concentration.

---

# Business Impact & Strategic Implications

## Revenue Optimization

* Expand high-performing categories (Classic, Supreme).
* Introduce premium variations within top segments.
* Focus marketing campaigns around best-selling products.

---

## Menu Engineering

* Identify low-revenue pizza types for:

  * Repricing
  * Bundling
  * Promotional discounting
  * Potential removal

This improves overall menu profitability and reduces operational complexity.

---

## Operational Efficiency

* Align staffing with lunch-hour peaks.
* Prepare high-demand ingredients in advance during peak windows.
* Optimize inventory purchasing using the 138 pizzas/day baseline.

---

## Promotional Strategy

* Launch time-bound lunch promotions.
* Bundle top-selling pizzas to increase average order value.
* Target underperforming categories with strategic campaigns.

---

# Analytical Techniques Used

This project demonstrates:

* Multi-table joins
* Revenue computation (quantity × price)
* Aggregations and GROUP BY logic
* Window functions (RANK, cumulative revenue)
* Category-level and product-level revenue analysis
* Time-series trend analysis
* Performance ranking per segment using CTEs

---

# Executive Summary

This analysis transforms transactional sales data into structured business intelligence.

It identifies:

* Revenue concentration across categories
* High-performing individual products
* Clear daily operational baselines
* Peak demand windows
* Strategic opportunities for growth and efficiency

The project demonstrates not only SQL proficiency but the ability to derive decision-oriented insights that support revenue growth, operational optimization, and data-driven strategic planning.





