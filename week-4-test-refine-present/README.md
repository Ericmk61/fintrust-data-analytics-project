# Week 4 – Test, Refine & Present

## FinTrust Digital Bank – Final Business Intelligence & Dashboard Solution

Week 4 represents the final stage of the FinTrust Digital Bank Data Analytics project.

The focus of this stage was to move from:

**“What have I developed?”**

to:

**“What have I tested, improved, finalised and delivered?”**

Week 4 built directly on the work completed during Weeks 1–3 and focused on final testing, validation, refinement, documentation and presentation readiness.

---

## Week 4 Objective

The final objective was to ensure that the FinTrust Data Analytics solution was:

- technically accurate;
- analytically consistent;
- reproducible;
- clearly documented;
- visually refined;
- validated across tools;
- suitable for final presentation and portfolio use.

The final workflow followed:

**Test → Validate → Refine → Finalize → Present**

---

# Part A – Final Data & Analysis Review

The final cleaned customer and transaction datasets were reviewed to confirm that the analytical foundation remained reliable.

Final checks included:

- dataset size verification;
- duplicate ID checks;
- missing-value checks;
- customer-to-transaction referential integrity;
- transaction amount validation;
- transaction date-range validation;
- KPI recalculation;
- SQL result verification;
- Python reproducibility testing.

### Final Dataset Status

- Customer records: **1,500**
- Transaction records: **12,000**
- Duplicate Customer IDs: **0**
- Duplicate Transaction IDs: **0**
- Unmatched transaction Customer IDs: **0**
- Invalid zero/negative transaction amounts: **0**
- Analysis period: **January–March 2026**

The final notebook was restarted and executed from beginning to end to confirm reproducibility.

---

# Part B – Final SQL Analysis

The strongest business queries from the Week 3 SQL analysis were reviewed and retained for the final solution.

Five final SQL analyses were selected:

1. Monthly Transaction Performance
2. Customer Segment Performance
3. Transaction Failure Hotspots
4. Risk Review by Transaction Value
5. Digital Engagement and Customer Behaviour

The final SQL work demonstrates:

- JOINs
- GROUP BY
- CASE statements
- CTEs
- aggregate functions
- window functions
- `LAG()`
- normalized customer-level metrics

The final queries were selected because they directly support the most important business findings used in the final dashboard and presentation.

---

# Part C – Final Power BI Dashboard Review

The Power BI dashboard was reviewed and refined rather than rebuilt.

Final testing covered:

- KPI accuracy;
- slicers and filters;
- visual interactions;
- drill-through functionality;
- titles and labels;
- data formatting;
- visual consistency;
- page navigation;
- user experience.

### Final Dashboard Pages

- Executive Overview / KPI Section
- Transaction Analysis I
- Transaction Analysis II
- Risk & Operations
- Customer & Segment Analysis
- Customer Segment Detail

### Key Dashboard Features

- Core KPI cards
- Monthly transaction trend analysis
- Transaction value by channel
- Failure Rate by Channel and Transaction Type
- Transaction Value per Customer by Segment
- Risk Review Rate by Transaction Amount Band
- Digital Engagement analysis
- Transactions per Customer by Segment
- Customer Segment drill-through

The Customer Segment Detail page allows users to drill from a customer segment into segment-specific KPI cards and transaction detail visuals.

---

# Part D – Final Business Insights

Five final business insights were selected for the final solution.

## 1. February Decline and March Recovery

Transaction activity declined in February before recovering strongly in March.

- January: **4,133 transactions**
- February: **3,734 transactions**
- March: **4,133 transactions**

March also generated approximately **NGN 196.20M**, higher than January and February.

---

## 2. High-Value Transactions Receive More Risk Review

Risk-review rates increased with transaction value.

- Below NGN 10K: **17.66%**
- NGN 10K–49,999: **17.81%**
- NGN 50K–99,999: **18.95%**
- NGN 100K–199,999: **22.13%**
- NGN 200K and above: **40.54%**

The strongest increase occurred among transactions of NGN 200,000 and above.

---

## 3. Failure Rates Differ by Channel and Transaction Type

Failure rates were not evenly distributed.

The highest observed combinations included:

- POS + Bill Payment: **7.22%**
- USSD + Transfer: **7.20%**
- POS + Deposit: **6.34%**
- Web + Bill Payment: **6.28%**

Failure percentages were considered together with absolute failure counts when evaluating operational impact.

---

## 4. Segment Size Can Hide Per-Customer Performance

Although Everyday customers generated the highest overall activity because they were the largest segment, normalized KPIs revealed different patterns.

- SME had the highest transaction value per customer at approximately **NGN 387,923**
- Student customers recorded the highest transaction frequency at approximately **8.23 transactions per customer**

This demonstrated the importance of comparing both total and normalized KPIs.

---

## 5. Digital Engagement Relates More Clearly to Customer Value

High-engagement customers generated the highest average transaction value per customer.

- Low Engagement: approximately **NGN 359,967**
- Medium Engagement: approximately **NGN 369,721**
- High Engagement: approximately **NGN 379,724**

Transaction-frequency differences were smaller, so digital engagement was treated as one indicator of customer behaviour rather than the only explanation.

---

# Part E – Final Validation

Five major analytical findings were validated across SQL, Python and Power BI where applicable.

Validation covered:

- monthly transaction trends;
- risk-review amount bands;
- transaction failure hotspots;
- customer segment performance;
- digital engagement behaviour.

Most findings were fully supported.

The digital-engagement finding was refined after validation because transaction frequency did not increase consistently from low to medium to high engagement.

This demonstrated the importance of revising conclusions when evidence does not fully support the original interpretation.

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

Additional KPIs were used for:

- month-over-month performance;
- customer segment normalization;
- digital engagement;
- transaction failure analysis;
- risk-review analysis.

---

# Final Testing and Refinement

The Week 4 testing process followed:

**Final Output → Test → Finding → Refinement → Re-test → Final Result**

Examples included:

- recalculating Power BI KPIs in Python;
- validating SQL monthly results in Python;
- validating risk-review amount bands across SQL, Python and Power BI;
- validating failure-rate patterns across SQL, Python and Power BI;
- testing dashboard slicers and interactions;
- testing Customer Segment drill-through;
- reviewing titles, labels and formatting;
- restarting and running the Python notebook from beginning to end.

The final analytical outputs remained consistent after re-testing.

---

# Final Recommendations

The final analysis supported recommendations to:

- monitor month-over-month transaction performance;
- investigate significant changes by channel and transaction type;
- maintain greater review attention for high-value transactions;
- monitor both transaction failure rates and failure counts;
- evaluate customer segments using normalized KPIs;
- use digital engagement alongside other customer behaviour indicators;
- continue validating analytical findings across multiple tools where possible.

---

# Assumptions, Limitations & Responsible Use

The following limitations apply to the project:

- FinTrust is a fictional organisation.
- The datasets are synthetic and used for educational purposes.
- The analysis covers only January–March 2026.
- `Risk_Review_Flag` is a synthetic educational review indicator.
- `Risk_Review_Flag` must not be interpreted as confirmed fraud.
- The analysis demonstrates associations and descriptive patterns, not causation.
- The solution is not a production banking system.
- Management recommendations are analytical recommendations based on the available synthetic data.

---

# Tools Used

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

# Final Week 4 Deliverables

The Week 4 folder contains the final Data Analytics deliverables, including:

- Final Data & Analysis Review notebook
- Final SQL analysis
- Final Power BI dashboard
- Power BI testing and review documentation
- Final Business Insights
- Final Validation evidence
- Assumptions, Limitations & Lessons Learned
- Final Project Report
- Week 4 README

---

# Lessons Learned

The final stage reinforced several key lessons:

- validation is as important as producing an initial result;
- SQL, Python and Power BI can be used together to strengthen confidence in findings;
- total values should often be supplemented with normalized KPIs;
- dashboards need clear business meaning, not only charts;
- findings should be revised when validation shows a more nuanced pattern;
- reproducibility and documentation are essential parts of professional analytics work.

---

# Final Outcome

The FinTrust Data Analytics project progressed from business understanding and planning in Week 1, through data preparation and descriptive analysis in Week 2, deeper analytical development in Week 3, and final testing, refinement and validation in Week 4.

The final solution combines:

**Customer & Transaction Data  
→ SQL and Python Analysis  
→ KPIs and Business Findings  
→ Interactive Power BI Dashboard  
→ Validation  
→ Management Recommendations**

The project is now ready for final submission and the individual recorded presentation.
