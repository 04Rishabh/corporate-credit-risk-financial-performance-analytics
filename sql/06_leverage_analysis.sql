SELECT
    company_id,
    financial_year,
    debt_to_equity,
    debt_risk,
    overall_credit_risk_score,
    overall_risk_category
FROM credit_risk_data
WHERE debt_to_equity IS NOT NULL
ORDER BY debt_to_equity DESC
LIMIT 15;
