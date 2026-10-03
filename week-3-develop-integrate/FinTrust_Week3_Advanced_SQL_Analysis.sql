USE fintrust_;

-- check datatype of the table
DESCRIBE fintrust_customer;

-- Advanced Analysis 
-- Which customers generate the highest transaction value and which customers transact most frequently?
WITH customer_activity AS (
    SELECT
        Customer_ID,
        COUNT(Transaction_ID) AS Total_Transactions,
        ROUND(SUM(Amount_NGN), 2) AS Total_Transaction_Value,
        ROUND(AVG(Amount_NGN), 2) AS Average_Transaction_Value
    FROM fintrust_transactions
    GROUP BY Customer_ID
),
ranked_customers AS (
    SELECT
        Customer_ID,
        Total_Transactions,
        Total_Transaction_Value,
        Average_Transaction_Value,
        DENSE_RANK() OVER (
            ORDER BY Total_Transaction_Value DESC
        ) AS Value_Rank,
        DENSE_RANK() OVER (
            ORDER BY Total_Transactions DESC
        ) AS Frequency_Rank
    FROM customer_activity
)
SELECT
    r.Customer_ID,
    c.Customer_Name,
    c.Customer_Segment,
    r.Total_Transactions,
    r.Total_Transaction_Value,
    r.Average_Transaction_Value,
    r.Value_Rank,
    r.Frequency_Rank
FROM ranked_customers r
JOIN fintrust_customer c
    ON r.Customer_ID = c.Customer_ID
ORDER BY
    r.Value_Rank,
    r.Frequency_Rank
LIMIT 20;

-- Which customer segments generate the highest transaction activity and value per customer?
WITH segment_activity AS (
    SELECT
        c.Customer_Segment,
        COUNT(DISTINCT c.Customer_ID) AS Total_Customers,
        COUNT(t.Transaction_ID) AS Total_Transactions,
        ROUND(SUM(t.Amount_NGN), 2) AS Total_Transaction_Value
    FROM fintrust_customer c
    JOIN fintrust_transactions t
        ON c.Customer_ID = t.Customer_ID
    GROUP BY c.Customer_Segment
)
SELECT
    Customer_Segment,
    Total_Customers,
    Total_Transactions,
    Total_Transaction_Value,
    ROUND(
        Total_Transactions * 1.0 / Total_Customers,
        2
    ) AS Transactions_Per_Customer,
    ROUND(
        Total_Transaction_Value / Total_Customers,
        2
    ) AS Transaction_Value_Per_Customer
FROM segment_activity
ORDER BY Transaction_Value_Per_Customer DESC;

-- How did transaction volume and transaction value change month-over-month from January to March 2026?

WITH monthly_activity AS (
    SELECT
        DATE_FORMAT(Transaction_Date, '%Y-%m') AS Month,
        COUNT(*) AS Total_Transactions,
        ROUND(SUM(Amount_NGN), 2) AS Total_Transaction_Value
    FROM fintrust_transactions
    GROUP BY DATE_FORMAT(Transaction_Date, '%Y-%m')
),
monthly_comparison AS (
    SELECT
        Month,
        Total_Transactions,
        Total_Transaction_Value,

        LAG(Total_Transactions) OVER (
            ORDER BY Month
        ) AS Previous_Month_Transactions,

        LAG(Total_Transaction_Value) OVER (
            ORDER BY Month
        ) AS Previous_Month_Value

    FROM monthly_activity
)
SELECT
    Month,
    Total_Transactions,
    Previous_Month_Transactions,
    ROUND(
        (Total_Transactions - Previous_Month_Transactions)
        * 100.0 / Previous_Month_Transactions,
        2
    ) AS Transaction_Volume_MoM_Percent,

    Total_Transaction_Value,
    Previous_Month_Value,
    ROUND(
        (Total_Transaction_Value - Previous_Month_Value)
        * 100.0 / Previous_Month_Value,
        2
    ) AS Transaction_Value_MoM_Percent
FROM monthly_comparison
ORDER BY Month;

-- Which channel and transaction-type combinations have the highest transaction failure rates?
SELECT
    Channel,
    Transaction_Type,
    COUNT(*) AS Total_Transactions,
    SUM(
        CASE
            WHEN Transaction_Status = 'Failed' THEN 1
            ELSE 0
        END
    ) AS Failed_Transactions,
    ROUND(
        SUM(
            CASE
                WHEN Transaction_Status = 'Failed' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Failure_Rate_Percent
FROM fintrust_transactions
GROUP BY
    Channel,
    Transaction_Type
HAVING COUNT(*) >= 20
ORDER BY Failure_Rate_Percent DESC;

-- Do the top 10% highest-value transactions differ from other transactions in success and risk-review patterns?
WITH transaction_rank AS (
    SELECT
        Transaction_ID,
        Amount_NGN,
        Transaction_Status,
        Risk_Review_Flag,

        NTILE(10) OVER (
            ORDER BY Amount_NGN DESC
        ) AS Value_Decile

    FROM fintrust_transactions
),
value_groups AS (
    SELECT
        *,
        CASE
            WHEN Value_Decile = 1 THEN 'Top 10% High-Value'
            ELSE 'Other 90%'
        END AS Transaction_Value_Group

    FROM transaction_rank
)
SELECT
    Transaction_Value_Group,

    COUNT(*) AS Total_Transactions,
    ROUND(
        AVG(Amount_NGN),
        2
    ) AS Average_Transaction_Value,
    SUM(
        CASE
            WHEN Transaction_Status = 'Successful' THEN 1
            ELSE 0
        END
    ) AS Successful_Transactions,
    ROUND(
        SUM(
            CASE
                WHEN Transaction_Status = 'Successful' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Success_Rate_Percent,
    SUM(
        CASE
            WHEN Risk_Review_Flag = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Risk_Review_Transactions,
    ROUND(
        SUM(
            CASE
                WHEN Risk_Review_Flag = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Risk_Review_Rate_Percent

FROM value_groups
GROUP BY Transaction_Value_Group
ORDER BY Average_Transaction_Value DESC;

-- How does customer digital engagement relate to transaction frequency and transaction value?
WITH customer_activity AS (
    SELECT
        c.Customer_ID,
        c.Digital_Engagement_Score,

        CASE
            WHEN c.Digital_Engagement_Score < 40 THEN 'Low Engagement'
            WHEN c.Digital_Engagement_Score < 70 THEN 'Medium Engagement'
            ELSE 'High Engagement'
        END AS Engagement_Level,

        COUNT(t.Transaction_ID) AS Total_Transactions,
        SUM(t.Amount_NGN) AS Total_Transaction_Value

    FROM fintrust_customer c

    JOIN fintrust_transactions t
        ON c.Customer_ID = t.Customer_ID

    GROUP BY
        c.Customer_ID,
        c.Digital_Engagement_Score
)

SELECT
    Engagement_Level,

    COUNT(*) AS Total_Customers,

    ROUND(
        AVG(Total_Transactions),
        2
    ) AS Average_Transactions_Per_Customer,

    ROUND(
        AVG(Total_Transaction_Value),
        2
    ) AS Average_Transaction_Value_Per_Customer

FROM customer_activity

GROUP BY Engagement_Level

ORDER BY
    CASE Engagement_Level
        WHEN 'Low Engagement' THEN 1
        WHEN 'Medium Engagement' THEN 2
        WHEN 'High Engagement' THEN 3
    END;

-- How does the risk-review rate change across different transaction amount bands?
WITH amount_bands AS (
    SELECT
        Transaction_ID,
        Amount_NGN,
        Risk_Review_Flag,

        CASE
            WHEN Amount_NGN < 10000 THEN 'Below 10K'
            WHEN Amount_NGN < 50000 THEN '10K - 49,999'
            WHEN Amount_NGN < 100000 THEN '50K - 99,999'
            WHEN Amount_NGN < 200000 THEN '100K - 199,999'
            ELSE '200K and Above'
        END AS Amount_Band

    FROM fintrust_transactions
)

SELECT
    Amount_Band,

    COUNT(*) AS Total_Transactions,

    ROUND(
        AVG(Amount_NGN),
        2
    ) AS Average_Transaction_Value,

    SUM(
        CASE
            WHEN Risk_Review_Flag = 'Yes' THEN 1
            ELSE 0
        END
    ) AS Risk_Review_Transactions,

    ROUND(
        SUM(
            CASE
                WHEN Risk_Review_Flag = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Risk_Review_Rate_Percent

FROM amount_bands

GROUP BY Amount_Band

ORDER BY
    CASE Amount_Band
        WHEN 'Below 10K' THEN 1
        WHEN '10K - 49,999' THEN 2
        WHEN '50K - 99,999' THEN 3
        WHEN '100K - 199,999' THEN 4
        WHEN '200K and Above' THEN 5
    END;

-- How do domestic and international transactions differ across banking channels in value, success and risk review?

SELECT
    International_Transaction,
    Channel,

    COUNT(*) AS Total_Transactions,

    ROUND(
        SUM(Amount_NGN),
        2
    ) AS Total_Transaction_Value,

    ROUND(
        AVG(Amount_NGN),
        2
    ) AS Average_Transaction_Value,

    ROUND(
        SUM(
            CASE
                WHEN Transaction_Status = 'Successful' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Success_Rate_Percent,

    ROUND(
        SUM(
            CASE
                WHEN Risk_Review_Flag = 'Yes' THEN 1
                ELSE 0
            END
        ) * 100.0 / COUNT(*),
        2
    ) AS Risk_Review_Rate_Percent

FROM fintrust_transactions

GROUP BY
    International_Transaction,
    Channel

ORDER BY
    International_Transaction,
    Total_Transaction_Value DESC;