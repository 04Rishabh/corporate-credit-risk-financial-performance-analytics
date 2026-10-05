SELECT
    financial_year,
    overall_risk_category,
    COUNT(*) AS observation_count
FROM credit_risk_data
GROUP BY financial_year, overall_risk_category
ORDER BY financial_year, overall_risk_category;
