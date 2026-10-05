SELECT
    overall_risk_category,
    COUNT(*) AS observation_count,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM credit_risk_data),
        2
    ) AS percentage
FROM credit_risk_data
GROUP BY overall_risk_category
ORDER BY observation_count DESC;
