# SQL_PROJECT
# Flight Data Analysis 📊✈️

## 📌 Project Overview
This project analyzes flight delays using SQL. The dataset includes flight schedules, delays, and other key details.

## 📂 Files
- `updated_cleaned_flight_data.csv` → Cleaned dataset for analysis
- `flight_analysis.sql` → SQL queries for insights
- `README.md` → Project documentation

## 📊 Key Insights
- Identified the busiest airports
- Analyzed flight delays per carrier
- Found the worst airports for departure delays

## 🚀 How to Use
1. Import `updated_cleaned_flight_data.csv` into MySQL Workbench.
2. Run `flight_analysis.sql` for insights.

## 📌 SQL Queries Example
```sql
SELECT Origin_Airport, AVG(Dep_Delay) AS avg_departure_delay
FROM updated_cleaned_flight_data
GROUP BY Origin_Airport
ORDER BY avg_departure_delay DESC
LIMIT 10;
