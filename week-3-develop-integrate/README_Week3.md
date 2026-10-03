# Week 3 – Develop & Integrate

## FinTrust Digital Bank – Advanced Business Intelligence & Dashboard Development

Week 3 builds directly on the Week 2 FinTrust analysis. The objective was to move from descriptive reporting toward deeper, decision-oriented analysis by expanding the SQL work, extending Python analysis, improving the Power BI dashboard, validating major findings, and developing evidence-based management recommendations.

## Week 3 Development Focus

Week 2 established the descriptive analytics foundation. Week 3 focused on:

- advanced SQL using CTEs, window functions, rankings, CASE statements, aggregates, and comparative analysis;
- deeper customer-level frequency, value, and digital engagement analysis;
- stronger month-over-month and cross-category trend analysis;
- improved Power BI reporting with more decision-oriented visuals and drill-through capability;
- cross-tool validation using SQL, Python, and Power BI;
- evidence-based business recommendations.

## Deliverables Completed

1. Advanced SQL Analysis
2. Updated Python Analysis
3. Updated Power BI Dashboard
4. Validated Findings
5. KPI Analysis
6. Business Recommendations
7. Testing / Validation Evidence
8. Week 3 Documentation

## Part A – Review of Week 2

Week 2 work was reviewed across data quality, SQL, Python, KPIs, dashboard design, and business findings.

The main development areas identified were:

- move beyond descriptive SQL into deeper comparative and customer-level analysis;
- expand customer behaviour analysis using normalized measures;
- improve monthly trend analysis;
- strengthen Power BI interactivity and management usability.

## Part B – Advanced SQL Analysis

Eight additional advanced SQL analyses were completed.

Key areas included:

- customer transaction value and frequency ranking;
- customer segment performance per customer;
- month-over-month transaction trends;
- channel and transaction-type failure rates;
- high-value transaction patterns;
- digital engagement and customer behaviour;
- risk-review patterns by transaction amount band;
- domestic versus international channel performance.

Advanced SQL techniques used included:

- JOINs
- GROUP BY
- CASE statements
- CTEs
- aggregate functions
- DENSE_RANK()
- LAG()
- NTILE()

## Part C – Advanced Python Analysis

Five additional Python analyses were completed to extend and validate the Week 2 exploratory analysis.

The analyses included:

- monthly transaction volume and value trends;
- failure-rate heatmap by channel and transaction type;
- transaction value distribution by customer segment;
- risk-review rate by transaction amount band;
- digital engagement versus customer transaction behaviour.

Python outputs were used to validate several findings originally identified in SQL.

## Part D – Updated Power BI Dashboard

The Week 2 dashboard was developed further rather than rebuilt from scratch.

The updated dashboard includes:

- Executive Overview / KPI section;
- Transaction Analysis I;
- Transaction Analysis II;
- Risk & Operations;
- Customer & Segment Analysis;
- Customer Segment Detail drill-through page.

Key Week 3 improvements included:

- failure-rate matrix by channel and transaction type;
- transaction value per customer by segment;
- monthly transaction volume and value trend;
- risk-review rate by transaction amount band;
- digital engagement analysis;
- transactions per customer by segment;
- customer-segment drill-through with segment-level KPI cards and detail charts.

## KPI Analysis

Core KPIs include:

- Total Customers: 1,500
- Total Transactions: 12,000
- Total Transaction Value: approximately NGN 560.48M
- Average Transaction Value: approximately NGN 46,706
- Transaction Success Rate: 90.47%
- Risk Review Rate: 19.60%

Additional Week 3 KPIs were used to compare customer segments, engagement levels, monthly changes, failure patterns, and risk-review behaviour.

## Validated Findings

Major findings were validated using SQL, Python, and Power BI.

Key validated findings included:

- February transaction activity declined before recovering strongly in March;
- higher-value transactions were much more likely to be selected for risk review;
- transaction failure rates varied significantly by channel and transaction type;
- high digital engagement was associated more clearly with higher transaction value than with transaction frequency;
- normalized segment metrics revealed different patterns from overall totals.

## Management Recommendations

The analysis supported recommendations to:

- strengthen month-over-month performance monitoring;
- apply greater review attention to high-value transactions;
- monitor transaction failures using both failure rate and failure count;
- use digital engagement as one customer-value indicator rather than the only indicator;
- manage customer segments using normalized KPIs as well as total values.

## Validation Approach

Important findings were cross-checked across multiple tools where possible.

Examples:

- SQL monthly trend results were validated in Python and Power BI;
- SQL failure-rate results were reproduced using a Python heatmap and Power BI matrix;
- SQL risk-review amount-band results were reproduced in Python and Power BI;
- SQL digital-engagement results were reproduced in Python and Power BI.

The synthetic `Risk_Review_Flag` is treated as an educational review indicator and not as confirmed fraud.

## Tools Used

- MySQL
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Power BI
- Jupyter Notebook / VS Code

## Week 3 Outcome

Week 3 transformed the FinTrust project from a mainly descriptive Week 2 analysis into a more developed business intelligence solution with deeper SQL analysis, expanded Python validation, improved KPI interpretation, stronger Power BI interactivity, validated findings, and management recommendations.

The project is now ready for Week 4 final testing, refinement, documentation, and presentation.
