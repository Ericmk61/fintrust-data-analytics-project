CREATE DATABASE fintrust_;
USE fintrust_;

-- check datatype of the table
DESCRIBE fintrust_customer;

-- check for duplicates in customer_id column
SELECT ï»¿Customer_ID, COUNT(*)
FROM fintrust_customer
GROUP BY ï»¿Customer_ID
HAVING COUNT(*) > 1;

-- check whether it has null values
SELECT *
FROM fintrust_customer
WHERE ï»¿Customer_ID IS NULL OR ï»¿Customer_ID = '';

-- change data type and say it shouldn't have null values
ALTER TABLE fintrust_customer
MODIFY ï»¿Customer_ID VARCHAR(20) NOT NULL;

-- makes cutomer_id to be a primary key 
ALTER TABLE fintrust_customer
ADD PRIMARY KEY (ï»¿Customer_ID);

-- change column name 
ALTER TABLE fintrust_customer
CHANGE COLUMN `ï»¿Customer_ID` 
Customer_ID VARCHAR(20);

-- check status
DESCRIBE fintrust_customer;

-- check status
DESCRIBE fintrust_transactions;

-- change table name 
ALTER TABLE transaction
RENAME TO fintrust_transactions;

ALTER TABLE fintrust_transactions
CHANGE COLUMN `ï»¿Transaction_ID`
Transaction_ID VARCHAR(25) NOT NULL;

-- make a column to be the primary key
ALTER TABLE fintrust_transactions
ADD PRIMARY KEY (Transaction_ID);

-- change data type
ALTER TABLE fintrust_transactions
MODIFY Customer_ID VARCHAR(20) NOT NULL;

ALTER TABLE fintrust_transactions
MODIFY Transaction_Date DATE;

ALTER TABLE fintrust_transactions
MODIFY Transaction_Time TIME;


ALTER TABLE fintrust_transactions
ADD COLUMN Transaction_Time_New TIME;

SET SQL_SAFE_UPDATES = 0;
UPDATE fintrust_transactions
SET Transaction_Time_New =
    STR_TO_DATE(Transaction_Time, '%h:%i %p');
    
-- Delete unwanted column 
ALTER TABLE fintrust_transactions
DROP COLUMN Transaction_Time;

-- counter check data 
SELECT COUNT(*) AS Total_Customers
FROM fintrust_customer;

SELECT COUNT(*) AS Total_Transactions
FROM fintrust_transactions;

-- Analytical questions 
-- Distribution by customer segment
SELECT
    Customer_Segment,
    COUNT(*) AS Total_Customers,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM fintrust_customer),
        2
    ) AS Percentage
FROM fintrust_customer
GROUP BY Customer_Segment
ORDER BY Total_Customers DESC;

-- Distribution by city
SELECT
    City,
    COUNT(*) AS Total_Customers,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM fintrust_customer),
        2
    ) AS Percentage
FROM fintrust_customer
GROUP BY City
ORDER BY Total_Customers DESC;

-- Distribution by account type
SELECT
    Account_Type,
    COUNT(*) AS Total_Customers,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM fintrust_customer),
        2
    ) AS Percentage
FROM fintrust_customer
GROUP BY Account_Type
ORDER BY Total_Customers DESC;

-- Distribution by account status
SELECT
    Account_Status,
    COUNT(*) AS Total_Customers,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM fintrust_customer),
        2
    ) AS Percentage
FROM fintrust_customer
GROUP BY Account_Status
ORDER BY Total_Customers DESC;

-- monthly transaction activity
SELECT
    DATE_FORMAT(Transaction_Date, '%Y-%m') AS Month,
    COUNT(*) AS Total_Transactions,
    ROUND(SUM(Amount_NGN), 2) AS Total_Transaction_Value,
    ROUND(AVG(Amount_NGN), 2) AS Average_Transaction_Value
FROM fintrust_transactions
GROUP BY DATE_FORMAT(Transaction_Date, '%Y-%m')
ORDER BY Month;

-- transaction types that generate the highest transaction volumes and transaction values
SELECT
    Transaction_Type,
    COUNT(*) AS Total_Transactions,
    ROUND(SUM(Amount_NGN), 2) AS Total_Transaction_Value,
    ROUND(AVG(Amount_NGN), 2) AS Average_Transaction_Value
FROM fintrust_transactions
GROUP BY Transaction_Type
ORDER BY Total_Transaction_Value DESC;

-- banking channels that generate the greatest transaction activity and value
SELECT
    Channel,
    COUNT(*) AS Total_Transactions,
    ROUND(SUM(Amount_NGN), 2) AS Total_Transaction_Value,
    ROUND(AVG(Amount_NGN), 2) AS Average_Transaction_Value
FROM fintrust_transactions
GROUP BY Channel
ORDER BY Total_Transaction_Value DESC;

-- How transaction values and behaviors differ across customer segments
SELECT
    c.Customer_Segment,
    COUNT(t.Transaction_ID) AS Total_Transactions,
    ROUND(SUM(t.Amount_NGN), 2) AS Total_Transaction_Value,
    ROUND(AVG(t.Amount_NGN), 2) AS Average_Transaction_Value,
    COUNT(DISTINCT t.Customer_ID) AS Active_Customers
FROM fintrust_customer c
JOIN fintrust_transactions t
    ON c.Customer_ID = t.Customer_ID
GROUP BY c.Customer_Segment
ORDER BY Total_Transaction_Value DESC;

-- What proportion of transactions are Successful, Failed, Reversed or Pending, and how does this vary by channel and transaction type
SELECT
    Transaction_Status,
    COUNT(*) AS Total_Transactions,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM fintrust_transactions),
        2
    ) AS Percentage
FROM fintrust_transactions
GROUP BY Transaction_Status
ORDER BY Total_Transactions DESC;

-- How do domestic and international transactions differ in value, status and risk-review patterns?
SELECT
    International_Transaction,
    COUNT(*) AS Total_Transactions,
    ROUND(SUM(Amount_NGN), 2) AS Total_Transaction_Value,
    ROUND(AVG(Amount_NGN), 2) AS Average_Transaction_Value,
    SUM(CASE 
            WHEN Risk_Review_Flag = 'Yes' THEN 1 
            ELSE 0 
        END) AS Risk_Review_Transactions,
    ROUND(
        SUM(CASE 
                WHEN Risk_Review_Flag = 'Yes' THEN 1 
                ELSE 0 
            END) * 100.0 / COUNT(*),
        2
    ) AS Risk_Review_Rate
FROM fintrust_transactions
GROUP BY International_Transaction;

-- how transaction status differs between domestic and international transactions:
SELECT
    International_Transaction,
    Transaction_Status,
    COUNT(*) AS Total_Transactions,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (
            PARTITION BY International_Transaction
        ),
        2
    ) AS Percentage_Within_Group
FROM fintrust_transactions
GROUP BY
    International_Transaction,
    Transaction_Status
ORDER BY
    International_Transaction,
    Total_Transactions DESC;
    
-- Transaction amount vs risk review
SELECT
    Risk_Review_Flag,
    COUNT(*) AS Total_Transactions,
    ROUND(AVG(Amount_NGN), 2) AS Average_Transaction_Value,
    ROUND(MIN(Amount_NGN), 2) AS Minimum_Transaction_Value,
    ROUND(MAX(Amount_NGN), 2) AS Maximum_Transaction_Value
FROM fintrust_transactions
GROUP BY Risk_Review_Flag;

-- Risk-review rate by transaction type
SELECT
    Transaction_Type,
    COUNT(*) AS Total_Transactions,
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
    ) AS Risk_Review_Rate
FROM fintrust_transactions
GROUP BY Transaction_Type
ORDER BY Risk_Review_Rate DESC;

-- Risk-review rate by channel
SELECT
    Channel,
    COUNT(*) AS Total_Transactions,
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
    ) AS Risk_Review_Rate
FROM fintrust_transactions
GROUP BY Channel
ORDER BY Risk_Review_Rate DESC;

-- Domestic vs international risk-review pattern
SELECT
    International_Transaction,
    COUNT(*) AS Total_Transactions,
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
    ) AS Risk_Review_Rate
FROM fintrust_transactions
GROUP BY International_Transaction
ORDER BY Risk_Review_Rate DESC;

-- Risk-review rate by location
SELECT
    Location,
    COUNT(*) AS Total_Transactions,
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
    ) AS Risk_Review_Rate
FROM fintrust_transactions
GROUP BY Location
ORDER BY Risk_Review_Rate DESC;

