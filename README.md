# Walmart-s-Retail-insights-optimization
Walmart Sales Analysis (SQL Project)
Project Overview
This project analyzes Walmart’s historical transaction data to uncover insights into branch performance, customer segmentation, product trends, and payment preferences. Using advanced MySQL queries, the analysis answers key business questions and supports decision‑making for sales optimization.

Dataset
- Source: Walmart transactional dataset
- Size: Thousands of records across multiple branches
- Key Features:
- Branch
- City
- Customer ID & Customer Type
- Product Line
- Payment Method
- Transaction Date & Total Sales

Methodology
The project was structured into 10 SQL tasks, each addressing a specific business question:
- Top Branch by Sales Growth Rate – Aggregated monthly sales by branch to identify growth leaders.
- Most Profitable Product Line per Branch – Ranked product lines by total sales within each branch.
- Customer Segmentation by Spending – Classified customers into High, Medium, Low segments based on total spend.
- Anomaly Detection – Flagged unusually high or low transactions using mean ± 2 standard deviations.
- Popular Payment Methods by City – Counted transactions by payment type to reveal city‑level preferences.
- Monthly Sales Distribution by Gender – Compared male vs female spending patterns across months.
- Best Product Line by Customer Type – Identified top product lines for Member vs Normal customers.
- Repeat Customers – Detected customers with multiple purchases.
- Top 5 Customers by Sales Volume – Ranked customers by total spend.
- Sales Trends by Day of Week – Analyzed daily transaction volumes and revenue patterns.

Results & Insights
- Branch Performance: Certain branches consistently outperformed others in monthly growth.
- Product Trends: Electronics and fashion lines dominated sales in multiple branches.
- Customer Segmentation: High‑value customers contributed disproportionately to revenue.
- Payment Preferences: Credit card usage was highest in urban cities, while cash dominated smaller towns.
- Seasonality: Sales peaked on weekends and during festive months (Oct–Nov).

How to Run
- Import the dataset into MySQL.
- Run the provided SQL scripts (task1.sql … task10.sql).
- Review query outputs for insights.
- Visualize results in BI tools (optional).

Business Impact
- Targeted Marketing: Focus promotions on top product lines and high‑value customers.
- Operational Efficiency: Allocate resources to high‑growth branches.
- Customer Retention: Identify repeat customers and design loyalty programs.
- Payment Strategy: Optimize transaction systems based on city‑level payment preferences.

