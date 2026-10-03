# FinTrust Digital Bank – Data Analytics Project

## Project Overview

This repository contains my Data Analytics project for the fictional **FinTrust Digital Bank**.

The project focuses on transforming customer and transaction data into actionable business intelligence using **SQL, Python, Power BI, and analytical documentation**.

The work follows a four-week project development structure:

- Week 1 – Understand & Plan
- Week 2 – Analyse & Prepare
- Week 3 – Develop & Integrate
- Week 4 – Test, Refine & Present

The analysis focuses on customer behaviour, transaction activity, banking channels, operational performance, digital engagement, transaction failures, and risk-review patterns.

---

## Business Objectives

The project aims to provide FinTrust management with better visibility into:

- Customer behaviour and customer segments
- Transaction volume and transaction value
- Banking channel performance
- Transaction success and failure patterns
- Monthly transaction trends
- Digital customer engagement
- Domestic and international transaction activity
- Risk-review behaviour
- High-value transaction patterns
- Decision-oriented KPIs and business recommendations

---

## Dataset Overview

The project uses synthetic FinTrust customer and transaction datasets.

### Customer Dataset

- **1,500 customers**
- Customer demographics
- Customer segments
- Account information
- Tenure
- Digital engagement
- Income bands
- Preferred banking channels

### Transaction Dataset

- **12,000 transactions**
- Transaction period: January–March 2026
- Transaction type
- Transaction amount
- Banking channel
- Transaction status
- Domestic/international indicator
- Risk-review indicator

`Customer_ID` is used to connect customer and transaction data.

> The datasets are synthetic and are used for educational analysis only.  
> `Risk_Review_Flag` represents an educational review indicator and should not be interpreted as confirmed fraud.

---

# Project Progress

## Week 1 – Understand & Plan ✅

Week 1 focused on understanding the business problem and preparing the analytics approach.

Key activities included:

- Business understanding
- Dataset profiling
- Identification of analytical questions
- KPI definition
- Dashboard wireframe
- Project risks and dependencies
- Week 2–4 analysis plan
- Success criteria

📁 [View Week 1](./week-1-understand-plan/)

---

## Week 2 – Analyse & Prepare ✅

Week 2 established the descriptive analytics foundation.

Key activities included:

- Data-quality assessment
- Data cleaning and preparation
- Customer and transaction validation
- SQL analysis
- Python exploratory data analysis
- KPI development
- Power BI data modelling
- Initial Power BI dashboard
- Business findings and documentation

### Week 2 KPI Snapshot

| KPI | Result |
|---|---:|
| Total Customers | 1,500 |
| Total Transactions | 12,000 |
| Total Transaction Value | NGN 560.48M |
| Average Transaction Value | Approx. NGN 46,706 |
| Transaction Success Rate | 90.47% |
| Risk Review Rate | 19.60% |

📁 [View Week 2](./week-2-analyse-prepare/)

---

## Week 3 – Develop & Integrate ✅

Week 3 developed the Week 2 work into a more complete and decision-oriented business intelligence solution.

### Advanced SQL Analysis

Eight additional advanced SQL analyses were completed using techniques including:

- JOINs
- GROUP BY
- CASE statements
- CTEs
- Aggregate functions
- `DENSE_RANK()`
- `LAG()`
- `NTILE()`

The analyses covered:

- Customer-level transaction value and frequency
- Segment performance per customer
- Month-over-month transaction trends
- Channel and transaction-type failure patterns
- High-value transaction behaviour
- Digital engagement
- Transaction amount and risk review
- Domestic versus international activity

### Advanced Python Analysis

Five additional Python analyses were completed:

- Monthly transaction volume and value analysis
- Failure-rate heatmap by channel and transaction type
- Transaction-value distribution by customer segment
- Risk-review rate by transaction amount band
- Digital engagement and customer transaction behaviour

Python was also used to validate important SQL findings.

### Updated Power BI Dashboard

The Week 2 dashboard was expanded with deeper analysis and improved interactivity.

Dashboard pages include:

- Executive Overview / KPI Section
- Transaction Analysis I
- Transaction Analysis II
- Risk & Operations
- Customer & Segment Analysis
- Customer Segment Detail drill-through

Week 3 Power BI improvements included:

- Failure Rate by Channel and Transaction Type
- Transaction Value per Customer by Segment
- Monthly Transaction Volume and Value Trend
- Risk Review Rate by Transaction Amount Band
- Digital Engagement Analysis
- Transactions per Customer by Segment
- Customer Segment Drill-through Analysis

### Validated Findings

Major findings were cross-validated using SQL, Python, and Power BI.

Examples include:

- February transaction activity declined before recovering strongly in March.
- High-value transactions were much more likely to be selected for risk review.
- Failure rates varied significantly depending on both channel and transaction type.
- Digital engagement showed a clearer relationship with customer transaction value than with transaction frequency.
- Normalized customer-segment KPIs revealed insights that were not visible from overall totals alone.

### Management Recommendations

The analysis supported recommendations to:

- Strengthen month-over-month performance monitoring
- Apply greater review attention to high-value transactions
- Monitor failures using both failure rates and absolute failure counts
- Use digital engagement alongside other customer-value measures
- Evaluate customer segments using normalized KPIs as well as overall totals

📁 [View Week 3](./week-3-develop-integrate/)

---

## Key Week 3 Analytical Findings

### Monthly Performance

Transaction volume declined from **4,133 transactions in January to 3,734 in February**, before recovering to **4,133 in March**.

March generated approximately **NGN 196.20M**, higher than both January and February.

### Customer Segment Performance

After normalizing for segment size:

- **SME** customers generated the highest transaction value per customer at approximately **NGN 387,923**
- **Student** customers recorded the highest transaction frequency at approximately **8.23 transactions per customer**

### Risk Review

Risk-review rates increased as transaction values increased.

Transactions of **NGN 200,000 and above recorded a 40.54% risk-review rate**, significantly higher than lower transaction-value bands.

### Transaction Failures

The highest observed failure-rate combinations included:

- **POS + Bill Payment – 7.22%**
- **USSD + Transfer – 7.20%**

High transaction volume was also considered alongside failure percentage when evaluating operational impact.

### Digital Engagement

High-engagement customers generated approximately **NGN 379,724 transaction value per customer**, compared with approximately **NGN 359,967** among low-engagement customers.

---

# Tools & Technologies

- MySQL
- SQL
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Power BI
- Jupyter Notebook
- VS Code
- Git
- GitHub

---

# Repository Structure

```text
fintrust-data-analytics-project/
│
├── week-1-understand-plan/
│   └── Week 1 planning and assessment files
│
├── week-2-analyse-prepare/
│   └── Week 2 SQL, Python, Power BI and documentation
│
├── week-3-develop-integrate/
│   └── Week 3 advanced analysis, validation and dashboard files
│
└── README.md
