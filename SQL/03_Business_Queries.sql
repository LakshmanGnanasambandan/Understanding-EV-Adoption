USE EV_Adoption;
GO

-- =========================================================
-- EV ADOPTION BUSINESS ANALYSIS
-- =========================================================


-- 1. Overall EV Purchase Intention
SELECT
    Will_Buy_EV,
    COUNT(*) AS Customer_Count,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS Percentage
FROM dbo.EV_Adoption_Data
GROUP BY Will_Buy_EV;


-- 2. Income Group vs EV Adoption
SELECT
    Income_Group,
    COUNT(*) AS Customer_Count,
    SUM(CASE WHEN Will_Buy_EV = 1 THEN 1 ELSE 0 END) AS EV_Buyers,
    ROUND(
        SUM(CASE WHEN Will_Buy_EV = 1 THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS Adoption_Rate
FROM dbo.EV_Adoption_Data
GROUP BY Income_Group
ORDER BY Adoption_Rate DESC;


-- 3. Range Anxiety vs EV Adoption
SELECT
    Range_Anxiety_Level,
    COUNT(*) AS Customer_Count,
    SUM(CASE WHEN Will_Buy_EV = 1 THEN 1 ELSE 0 END) AS EV_Buyers,
    ROUND(
        SUM(CASE WHEN Will_Buy_EV = 1 THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS Adoption_Rate
FROM dbo.EV_Adoption_Data
GROUP BY Range_Anxiety_Level
ORDER BY Adoption_Rate DESC;


-- 4. Subsidy Availability vs EV Adoption
SELECT
    Subsidy_Available,
    COUNT(*) AS Customer_Count,
    SUM(CASE WHEN Will_Buy_EV = 1 THEN 1 ELSE 0 END) AS EV_Buyers,
    ROUND(
        SUM(CASE WHEN Will_Buy_EV = 1 THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS Adoption_Rate
FROM dbo.EV_Adoption_Data
GROUP BY Subsidy_Available
ORDER BY Adoption_Rate DESC;


-- 5. Home Charging Availability
SELECT
    CASE
        WHEN Charging_Stations_Near_Home BETWEEN 0 AND 4 THEN 'Low'
        WHEN Charging_Stations_Near_Home BETWEEN 5 AND 9 THEN 'Medium'
        WHEN Charging_Stations_Near_Home BETWEEN 10 AND 14 THEN 'High'
    END AS Charging_Group,

    COUNT(*) AS Customer_Count,

    SUM(CASE WHEN Will_Buy_EV = 1 THEN 1 ELSE 0 END) AS EV_Buyers,

    ROUND(
        SUM(CASE WHEN Will_Buy_EV = 1 THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS Adoption_Rate

FROM dbo.EV_Adoption_Data

GROUP BY
    CASE
        WHEN Charging_Stations_Near_Home BETWEEN 0 AND 4 THEN 'Low'
        WHEN Charging_Stations_Near_Home BETWEEN 5 AND 9 THEN 'Medium'
        WHEN Charging_Stations_Near_Home BETWEEN 10 AND 14 THEN 'High'
    END

ORDER BY Adoption_Rate DESC;


-- 6. Customer Segment Analysis
-- Income + Range Anxiety + Subsidy

SELECT
    Income_Group,
    Range_Anxiety_Level,
    Subsidy_Available,
    COUNT(*) AS Customer_Count,
    SUM(CASE WHEN Will_Buy_EV = 1 THEN 1 ELSE 0 END) AS EV_Buyers,
    ROUND(
        SUM(CASE WHEN Will_Buy_EV = 1 THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS Adoption_Rate
FROM dbo.EV_Adoption_Data
GROUP BY
    Income_Group,
    Range_Anxiety_Level,
    Subsidy_Available
HAVING COUNT(*) >= 50
ORDER BY Adoption_Rate DESC;
