-- Combine Facebook and Google Ads data using CTE and UNION

WITH ads_data as -- with ile iki tabloyu birleştirdik 
(
    SELECT
        ad_date,
        'Facebook Ads' AS media_source, -- satın alınan kaynağı göstemek için media_source adında sütun oluşturduk
        spend,
        impressions,
        reach,
        clicks,
        leads,
        value
    FROM facebook_ads_basic_daily

    UNION -- bu iki tablodaki takrar eden verileri getirmemesi anlamında union kullandık

    SELECT
        ad_date,
        'Google Ads' AS media_source,
        spend,
        impressions,
        reach,
        clicks,
        leads,
        value
    FROM google_ads_basic_daily
)
    
    -- Aggregate metrics by date and advertising platform

SELECT
    ad_date,
    media_source,
    SUM(spend) AS total_spend,
    SUM(impressions) AS total_impressions,
    SUM(reach) AS total_reach,
    SUM(clicks) AS total_clicks,
    SUM(leads) AS total_leads,
    SUM(value) AS total_conversion_value
FROM ads_data
GROUP BY ad_date, media_source   -- burada önce tahie göre ardından satın alınan kaynağa göre grupla dedik
ORDER BY ad_date, media_source;  -- oluşturduğun verileri düzenli bir şekilde ver dedik 


