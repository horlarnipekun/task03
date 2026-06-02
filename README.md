# SQL Sales Data Exploratory Data Analysis (EDA)

## Description

This project performs Exploratory Data Analysis (EDA) on a sales dataset using SQL. The objective is to uncover trends, identify outliers, calculate descriptive statistics, and generate actionable business insights from transactional data.

### Key Features

* Calculate mean, median, count, and other summary statistics
* Analyze sales and customer behavior trends
* Identify high-value transactions and outliers
* Explore product performance and payment preferences
* Generate business recommendations based on findings

## Technologies Used

* SQL
* Microsoft SQL Server (or your preferred SQL database)
* Excel (for dataset storage and validation)

## How to Run

1. Import the dataset into your SQL database.
2. Open your SQL query editor.
3. Execute the SQL scripts for:

   * Data cleaning
   * Descriptive statistics
   * Trend analysis
   * Outlier detection
4. Review the generated results and insights.

### Example Command

```sql
SELECT
    AVG(TotalPrice) AS MeanPrice,
    COUNT(*) AS TotalRecords
FROM SalesData;
```

## Project Outcome

The analysis provides valuable insights into sales performance, customer purchasing behavior, payment trends, and operational efficiency, supporting data-driven business decisions.
