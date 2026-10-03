# Week 3 – Develop & Integrate

## FinTrust Digital Bank – Advanced Business Intelligence & Dashboard Development

Week 3 builds directly on the Week 2 FinTrust analysis. The objective was to move from descriptive reporting toward deeper, decision-oriented analysis by expanding the SQL work, extending Python analysis, improving the Power BI dashboard, validating major findings, and developing evidence-based management recommendations.

## Week 3 Development Focus

Week 2 established the descriptive analytics foundation. Week 3 focused on:

- Advanced SQL using CTEs, window functions, rankings, CASE statements, aggregate functions, and comparative analysis
- Deeper customer-level transaction frequency, value, and digital engagement analysis
- Stronger month-over-month and category-level trend analysis
- Improved Power BI reporting with more decision-oriented visuals and drill-through capability
- Cross-tool validation using SQL, Python, and Power BI
- Evidence-based business recommendations

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

The main areas identified for further development were:

- Moving beyond descriptive SQL into deeper comparative and customer-level analysis
- Expanding customer behaviour analysis using normalized measures
- Improving monthly trend analysis
- Strengthening Power BI interactivity and management usability

## Part B – Advanced SQL Analysis

Eight additional advanced SQL analyses were completed.

The analyses covered:

- Customer transaction value and frequency ranking
- Customer segment performance per customer
- Month-over-month transaction trends
- Channel and transaction-type failure rates
- High-value transaction patterns
- Digital engagement and customer behaviour
- Risk-review patterns by transaction amount band
- Domestic versus international channel performance

Advanced SQL techniques used included:

- JOINs
- GROUP BY
- CASE statements
- CTEs
- Aggregate functions
- DENSE_RANK()
- LAG()
- NTILE()

## Part C – Advanced Python Analysis

Five additional Python analyses were completed to extend and validate the Week 2 exploratory analysis.

The analyses included:

- Monthly transaction volume and value trends
- Failure-rate heatmap by channel and transaction type
- Transaction value distribution by customer segment
- Risk-review rate by transaction amount band
- Digital engagement versus customer transaction behaviour

Python outputs were also used to validate several findings identified in SQL.

## Part D – Updated Power BI Dashboard

The Week 2 dashboard was developed further rather than rebuilt from scratch.

The updated dashboard includes:

- Executive Overview / KPI Section
- Transaction Analysis I
- Transaction Analysis II
- Risk & Operations
- Customer & Segment Analysis
- Customer Segment Detail drill-through page

Key Week 3 Power BI improvements included:

- Failure-rate matrix by channel and transaction type
- Transaction value per customer by segment
- Monthly transaction volume and value trend analysis
- Risk-review rate by transaction amount band
- Digital engagement analysis
- Transactions per customer by segment
- Customer-segment drill-through with segment-level KPI cards and detail charts

## KPI Analysis

Core KPIs include:

- Total Customers: 1,500
- Total Transactions: 12,000
- Total Transaction Value: approximately NGN 560.48M
- Average Transaction Value: approximately NGN 46,706
- Transaction Success Rate: 90.47%
- Risk Review Rate: 19.60%

Additional Week 3 KPIs were used to compare customer segments, engagement levels, monthly performance, failure patterns, and risk-review behaviour.

## Validated Findings

Major findings were validated using SQL, Python, and Power BI.

Key validated findings included:

- February transaction activity declined before recovering strongly in March
- Higher-value transactions were much more likely to be selected for risk review
- Transaction failure rates varied significantly by channel and transaction type
- High digital engagement was associated more clearly with higher transaction value than with transaction frequency
- Normalized customer-segment metrics revealed different patterns from overall totals

## Management Recommendations

The analysis supported recommendations to:

- Strengthen month-over-month performance monitoring
- Apply greater review attention to high-value transactions
- Monitor transaction failures using both failure rate and failure count
- Use digital engagement as one customer-value indicator rather than the only indicator
- Manage customer segments using normalized KPIs as well as total values

## Validation Approach

Important findings were cross-checked across multiple tools where possible.

Examples include:

- SQL monthly trend results were validated using Python and Power BI
- SQL failure-rate results were reproduced using a Python heatmap and Power BI matrix
- SQL risk-review amount-band results were reproduced in Python and Power BI
- SQL digital-engagement results were reproduced in Python and Power BI

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

Week 3 transformed the FinTrust project from a mainly descriptive Week 2 analysis into a more developed business intelligence solution with deeper SQL analysis, expanded Python validation, improved KPI interpretation, stronger Power BI interactivity, validated findings, and evidence-based management recommendations.

The project is now ready for Week 4 final testing, refinement, documentation, and presentation.
