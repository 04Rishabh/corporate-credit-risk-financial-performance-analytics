SELECT 'Debt' AS risk_factor, COUNT(*) AS high_risk_count
FROM credit_risk_data
WHERE debt_risk = 'High'

UNION ALL

SELECT 'Interest Coverage', COUNT(*)
FROM credit_risk_data
WHERE interest_coverage_risk = 'High'

UNION ALL

SELECT 'OCF to Debt', COUNT(*)
FROM credit_risk_data
WHERE ocf_to_debt_risk = 'High'

UNION ALL

SELECT 'Operating Margin', COUNT(*)
FROM credit_risk_data
WHERE operating_margin_risk = 'High'

UNION ALL

SELECT 'Net Profit Margin', COUNT(*)
FROM credit_risk_data
WHERE net_profit_margin_risk = 'High'

UNION ALL

SELECT 'ROA', COUNT(*)
FROM credit_risk_data
WHERE roa_risk = 'High'

UNION ALL

SELECT 'ROE', COUNT(*)
FROM credit_risk_data
WHERE roe_risk = 'High'

ORDER BY high_risk_count DESC;
