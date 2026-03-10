# Ads Performance Analysis (SQL)

This project analyzes advertising performance data from two platforms:

- Facebook Ads
- Google Ads

The goal is to combine data from both sources and analyze key performance metrics using SQL.

## Technologies

- PostgreSQL
- SQL
- CTE (Common Table Expressions)
- UNION
- Aggregation functions

## Dataset

The analysis uses two tables:

facebook_ads_basic_daily  
google_ads_basic_daily

Both tables contain daily advertising performance metrics such as:

- spend
- impressions
- reach
- clicks
- leads
- value

## Key SQL Concepts Used

CTE (Common Table Expression) is used to create a temporary combined dataset.

UNION ALL is used to merge Facebook and Google Ads data.

GROUP BY is used to aggregate performance metrics by date and media source.

## Metrics Calculated

- Total Spend
- Total Impressions
- Total Clicks
- Total Conversion Value
