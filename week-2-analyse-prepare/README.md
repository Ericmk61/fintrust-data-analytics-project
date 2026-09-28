# FinTrust Digital Bank – Week 2: Analyse & Prepare

## Project Overview

Week 2 of the FinTrust Digital Banking project focused on preparing, analysing and visualising the customer and transaction data.

The work involved data-quality assessment, data cleaning, SQL analysis, exploratory data analysis with Python, and the development of an interactive Power BI dashboard.

The analysis was based on:

- 1,500 customer records
- 12,000 transaction records
- Transaction activity from January to March 2026

---

## Tools Used

- Excel
- MySQL
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook
- Power BI

---

## Week 2 Work Completed

### 1. Data Quality Assessment

The customer and transaction datasets were reviewed for:

- Missing values
- Duplicate records
- Unique identifiers
- Data types
- Inconsistent values
- Unusual transaction values
- Dataset relationships

The customer dataset had no missing values.

The transaction dataset contained missing values in:

- `Device_Type`
- `Location`

These missing values were handled during data preparation.

`Customer_ID` was retained as the main customer identifier because customer names were not unique.

---

## 2. Data Preparation

The datasets were prepared for analysis by:

- Reviewing and correcting data types
- Handling missing values
- Separating transaction date and time
- Checking customer and transaction identifiers
- Validating the relationship between the two datasets
- Preparing cleaned CSV files for SQL, Python and Power BI analysis

The customer and transaction datasets were connected using:

`Customer_ID`

The relationship is one customer to many transactions.

---

## 3. SQL Analysis

SQL was used to investigate customer and transaction behaviour.

The analysis covered:

- Customer distribution by segment
- Transaction activity over time
- Transaction volume and value by transaction type
- Channel performance
- Customer transaction behaviour
- Transaction status
- Domestic versus international transactions
- Risk-review patterns

SQL helped answer specific business questions before moving into deeper exploratory analysis.

---

## 4. Python Exploratory Data Analysis

Python was used to explore patterns in the FinTrust datasets.

The analysis included:

- Customer segment distribution
- Transaction type analysis
- Transaction amount distribution
- Banking channel analysis
- Transaction status analysis
- International transaction analysis
- Customer behaviour by segment
- Risk-review patterns

Matplotlib and Seaborn were used to create supporting visualisations.

---

## 5. Power BI Dashboard

An interactive Power BI dashboard was developed to communicate the main findings.

The dashboard contains four report pages:

### Executive Overview

Provides an overall view of FinTrust performance using key performance indicators and filters.

### Transaction Analysis I

Examines transaction activity by transaction type and banking channel.

### Transaction Analysis II

Focuses on customer segments, transaction trends and transaction status.

### Risk Review

Examines risk-review rates across banking channels and transaction types.

---

## Key Dashboard Metrics

| KPI | Result |
|---|---:|
| Total Customers | 1,500 |
| Total Transactions | 12,000 |
| Total Transaction Value | NGN 560.48M |
| Average Transaction Value | NGN 46,706 |
| Transaction Success Rate | 90.47% |
| Risk Review Rate | 19.60% |

---

## Key Findings

### 1. Transfers generated the highest transaction activity

Transfers recorded the highest transaction volume and the highest overall transaction value.

This suggests that transfers are a major part of FinTrust's customer transaction activity.

### 2. Mobile App was the most active banking channel

The Mobile App generated the highest transaction volume and transaction value.

This highlights the importance of FinTrust's digital banking platform.

### 3. Deposits had relatively high transaction value

Although deposits were not among the highest transaction types by volume, they generated the second-highest total transaction value.

This indicates that deposit transactions tend to involve larger individual amounts.

### 4. Most transactions were successful

The overall transaction success rate was approximately **90.47%**.

Failed transactions represented the largest group among non-successful transactions, while reversed and pending transactions occurred less frequently.

### 5. Customer activity differed slightly across segments

Student customers recorded the highest average number of transactions per customer, followed closely by Premium and Everyday customers.

SME customers recorded the lowest average transactions per customer.

### 6. Risk-review rates varied by banking channel

Web and ATM transactions showed relatively higher risk-review rates, while USSD recorded a lower rate.

The differences between channels were moderate rather than extreme.

---

## Data Limitation

The `Risk_Review_Flag` is a synthetic indicator created for the project.

It should be interpreted as a transaction selected for additional review and **not as confirmed fraud**.

---

## Repository Contents

The Week 2 folder contains the main analysis deliverables, including:

- Data Quality Assessment
- Data Cleaning Documentation
- SQL Analysis
- Python EDA Notebook
- Power BI Dashboard
- Dashboard Screenshots
- Week 2 README

---

## Skills Practised

This phase of the project strengthened my practical experience in:

- Data cleaning
- Data-quality assessment
- SQL querying
- Exploratory data analysis
- Python data analysis
- Data visualisation
- DAX measures
- Power BI dashboard development
- Business insight generation

---

## Conclusion

Week 2 moved the FinTrust project from data understanding into practical analysis.

The combination of Excel, SQL, Python and Power BI provided a complete workflow for preparing the data, investigating customer and transaction behaviour, identifying meaningful patterns, and presenting the results through an interactive management dashboard.
