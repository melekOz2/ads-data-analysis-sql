# Ads Performance Analysis (SQL)

This project analyzes advertising performance data from two platforms:

- Facebook Ads
- Google Ads
- <img width="1493" height="868" alt="image" src="https://github.com/user-attachments/assets/12b2217c-acbd-4654-8384-cf8307a43779" />


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

  ## Example Query

```sql
WITH ads_data AS (
    SELECT ad_date,
           'Facebook Ads' AS media_source,
           spend,
           impressions,
           reach,
           clicks,
           leads,
           value
    FROM facebook_ads_basic_daily

    UNION ALL

    SELECT ad_date,
           'Google Ads' AS media_source,
           spend,
           impressions,
           reach,
           clicks,
           leads,
           value
    FROM google_ads_basic_daily
)

SELECT
    ad_date,
    media_source,
    SUM(spend) AS total_spend,
    SUM(impressions) AS total_impressions,
    SUM(clicks) AS total_clicks,
    SUM(value) AS total_conversion_value
FROM ads_data
GROUP BY ad_date, media_source
ORDER BY ad_date, media_source;

## Author
Melike Emine Özyavuz
