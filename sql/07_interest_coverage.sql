SELECT
    company_id,
    financial_year,
    interest_coverage,
    interest_coverage_risk,
    overall_credit_risk_score,
    overall_risk_category
FROM credit_risk_data
WHERE interest_coverage IS NOT NULL
ORDER BY interest_coverage ASC
LIMIT 15;
