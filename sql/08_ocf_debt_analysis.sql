SELECT
    company_id,
    financial_year,
    ocf_to_debt,
    ocf_to_debt_risk,
    overall_credit_risk_score,
    overall_risk_category
FROM credit_risk_data
WHERE ocf_to_debt IS NOT NULL
ORDER BY ocf_to_debt ASC
LIMIT 15;
