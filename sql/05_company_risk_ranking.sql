SELECT
    company_id,
    COUNT(*) AS years_observed,
    ROUND(AVG(overall_credit_risk_score), 2) AS avg_risk_score
FROM credit_risk_data
GROUP BY company_id
HAVING COUNT(*) >= 3
ORDER BY avg_risk_score DESC
LIMIT 15;
