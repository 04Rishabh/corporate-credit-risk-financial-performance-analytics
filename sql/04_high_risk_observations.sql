SELECT
    company_id,
    financial_year,
    overall_credit_risk_score,
    overall_risk_category,
    debt_to_equity,
    interest_coverage,
    ocf_to_debt
FROM credit_risk_data
WHERE overall_risk_category = 'High'
ORDER BY overall_credit_risk_score DESC
LIMIT 20;
