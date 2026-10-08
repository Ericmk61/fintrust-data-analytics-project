# FinTrust Digital Bank – Data Analytics Project

## Project Overview

This repository contains my four-week **FinTrust Digital Bank Data Analytics project** completed through the AnalystLab Africa Experience Lab Internship Programme.

The project focused on transforming synthetic customer and transaction data into a structured business intelligence solution using **SQL, Python, Power BI, data validation and business analysis**.

The project followed four development stages:

- Week 1 – Understand & Plan
- Week 2 – Analyse & Prepare
- Week 3 – Develop & Integrate
- Week 4 – Test, Refine & Present

The final solution combines:

**Customer & Transaction Data  
→ Data Preparation  
→ SQL & Python Analysis  
→ KPIs & Business Insights  
→ Interactive Power BI Dashboard  
→ Validation  
→ Management Recommendations**

---

# Business Objectives

The analysis was designed to help FinTrust better understand:

- Customer behaviour
- Customer segment performance
- Transaction volume and value
- Banking channel performance
- Transaction success and failure patterns
- Monthly transaction trends
- Digital customer engagement
- Domestic and international activity
- High-value transaction behaviour
- Risk-review patterns
- Decision-oriented KPIs

---

# Dataset Overview

The project uses synthetic FinTrust customer and transaction datasets.

## Customer Dataset

- **1,500 customer records**
- Customer demographics
- Customer segments
- Account information
- Tenure
- Digital engagement score
- Income bands
- Preferred banking channels
- Account status

## Transaction Dataset

- **12,000 transaction records**
- Analysis period: **January–March 2026**
- Transaction type
- Transaction amount
- Banking channel
- Transaction status
- Device information
- Location
- Domestic/international indicator
- Risk-review indicator

`Customer_ID` was used as the relationship key between the customer and transaction datasets.

> **Important:** FinTrust is a fictional organisation and the datasets are synthetic.  
> `Risk_Review_Flag` is an educational review indicator and must not be interpreted as confirmed fraud.

---

# Project Progress

## Week 1 – Understand & Plan ✅

Week 1 focused on understanding the FinTrust business problem and defining the analytical approach.

Key activities included:

- Business understanding
- Dataset profiling
- Identification of analytical questions
- KPI planning
- Dashboard wireframe
- Risk and dependency identification
- Analysis roadmap
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
| Total Transaction Value | Approx. NGN 560.48M |
| Average Transaction Value | Approx. NGN 46,706 |
| Transaction Success Rate | 90.47% |
| Risk Review Rate | 19.60% |

📁 [View Week 2](./week-2-analyse-prepare/)

---

## Week 3 – Develop & Integrate ✅

Week 3 developed the Week 2 analysis into a deeper and more decision-oriented business intelligence solution.

### Advanced SQL Analysis

Eight additional SQL analyses were completed using:

- JOINs
- GROUP BY
- CASE statements
- CTEs
- Aggregate functions
- Window functions
- `DENSE_RANK()`
- `LAG()`
- `NTILE()`

The analysis covered:

- Customer-level transaction value and frequency
- Segment performance per customer
- Month-over-month trends
- Channel and transaction-type failure patterns
- High-value transactions
- Digital engagement
- Risk review by transaction value
- Domestic versus international activity

### Advanced Python Analysis

Five additional Python analyses were completed:

- Monthly transaction trend analysis
- Failure-rate heatmap
- Transaction-value distribution by segment
- Risk-review rate by transaction amount band
- Digital engagement and customer behaviour

### Power BI Development

The dashboard was expanded with:

- Failure Rate by Channel and Transaction Type
- Transaction Value per Customer by Segment
- Risk Review Rate by Transaction Amount Band
- Digital Engagement analysis
- Transactions per Customer by Segment
- Customer Segment drill-through
- Segment-specific KPI and detail analysis

### Validation

Major SQL findings were cross-validated using Python and Power BI.

📁 [View Week 3](./week-3-develop-integrate/)

---

# Week 4 – Test, Refine & Present ✅

Week 4 was the final project stage and focused on:

**Test → Validate → Refine → Finalize → Present**

The objective was to confirm that the final FinTrust analytical solution was accurate, reproducible, clearly documented and ready for final delivery.

## Final Data & Analysis Review

Final checks confirmed:

- Customer records: **1,500**
- Transaction records: **12,000**
- Duplicate Customer IDs: **0**
- Duplicate Transaction IDs: **0**
- Unmatched transaction Customer IDs: **0**
- Invalid zero/negative transaction amounts: **0**
- Analysis period remained January–March 2026
- Core KPI calculations matched across the final analysis

The Python notebook was restarted and executed from beginning to end to confirm reproducibility.

---

## Final SQL Analysis

Five final business queries were selected from the strongest project analyses:

1. Monthly Transaction Performance
2. Customer Segment Performance
3. Transaction Failure Hotspots
4. Risk Review by Transaction Value
5. Digital Engagement and Customer Behaviour

These queries demonstrate:

- JOINs
- GROUP BY
- CASE
- CTEs
- Aggregations
- Window functions
- `LAG()`
- Customer-level normalized analysis

---

## Final Power BI Dashboard

The final Power BI solution includes:

- Executive Overview
- Transaction Analysis I
- Transaction Analysis II
- Risk & Operations
- Customer & Segment Analysis
- Customer Segment Detail drill-through

Final testing covered:

- KPI accuracy
- Slicer behaviour
- Visual interactions
- Drill-through functionality
- Titles and labels
- Formatting consistency
- Page navigation
- User experience

---

# Final KPI Summary

| KPI | Final Result |
|---|---:|
| Total Customers | 1,500 |
| Total Transactions | 12,000 |
| Total Transaction Value | Approx. NGN 560.48M |
| Average Transaction Value | Approx. NGN 46,706 |
| Transaction Success Rate | 90.47% |
| Risk Review Rate | 19.60% |

---

# Key Final Business Insights

## 1. February Decline and March Recovery

Transaction activity declined in February before recovering strongly in March.

- January: **4,133 transactions**
- February: **3,734 transactions**
- March: **4,133 transactions**

March generated approximately **NGN 196.20M**, the highest monthly transaction value in the analysis period.

---

## 2. High-Value Transactions Receive More Risk Review

Risk-review rates increased with transaction value.

| Amount Band | Risk Review Rate |
|---|---:|
| Below NGN 10K | 17.66% |
| NGN 10K–49,999 | 17.81% |
| NGN 50K–99,999 | 18.95% |
| NGN 100K–199,999 | 22.13% |
| NGN 200K+ | **40.54%** |

Transactions of NGN 200,000 and above showed the strongest increase in review activity.

---

## 3. Transaction Failure Hotspots

The highest observed failure-rate combinations included:

- **POS + Bill Payment – 7.22%**
- **USSD + Transfer – 7.20%**
- **POS + Deposit – 6.34%**
- **Web + Bill Payment – 6.28%**

Failure percentage was evaluated together with absolute failure counts to avoid overlooking high-volume operational issues.

---

## 4. Segment Size Can Hide Customer-Level Performance

Although Everyday customers generated the highest overall activity because they formed the largest customer segment, normalized KPIs revealed different performance patterns.

- **SME** customers generated the highest transaction value per customer at approximately **NGN 387,923**
- **Student** customers recorded the highest transaction frequency at approximately **8.23 transactions per customer**

---

## 5. Digital Engagement Relates More Clearly to Customer Value

Average transaction value per customer increased across engagement levels:

- Low Engagement: approx. **NGN 359,967**
- Medium Engagement: approx. **NGN 369,721**
- High Engagement: approx. **NGN 379,724**

Transaction-frequency differences were smaller, so digital engagement was treated as one indicator of customer behaviour rather than the sole explanation.

---

# Final Recommendations

The final analysis supported the following recommendations:

- Strengthen month-over-month transaction performance monitoring
- Investigate significant changes by channel and transaction type
- Maintain enhanced review attention for high-value transactions
- Monitor both transaction failure rates and absolute failure counts
- Evaluate customer segments using normalized KPIs as well as totals
- Use digital engagement alongside transaction frequency, value and segment information
- Continue cross-validating important findings across analytical tools

---

# Testing & Validation

The final testing process followed:

**Final Output → Test → Finding → Refinement → Re-test → Final Result**

Examples included:

- Recalculating KPI values directly in Python
- Comparing monthly SQL results with Python
- Validating risk-review amount bands across SQL, Python and Power BI
- Validating failure-rate patterns across SQL, Python and Power BI
- Testing Power BI slicers and visual interactions
- Testing Customer Segment drill-through
- Reviewing dashboard titles, labels and formatting
- Restarting and rerunning the Python notebook

The final analytical results remained consistent after re-testing.

---

# Assumptions, Limitations & Responsible Use

The project has several important limitations:

- FinTrust is fictional.
- The datasets are synthetic.
- The analysis covers only January–March 2026.
- `Risk_Review_Flag` is not an actual fraud determination.
- Findings describe patterns and associations rather than causation.
- The solution is not a production banking platform.
- Recommendations are based only on the supplied synthetic project data.

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
│   └── Planning, business understanding and project setup
│
├── week-2-analyse-prepare/
│   └── Data preparation, SQL, Python and initial Power BI analysis
│
├── week-3-develop-integrate/
│   └── Advanced SQL, Python, dashboard development and validation
│
├── week-4-test-refine-present/
│   └── Final testing, refinement, validation and project documentation
│
└── README.md
