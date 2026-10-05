SELECT
    overall_risk_category,
    ROUND(AVG(revenue), 2) AS avg_revenue,
    ROUND(AVG(operating_profit), 2) AS avg_operating_profit,
    ROUND(AVG(net_profit), 2) AS avg_net_profit,
    ROUND(AVG(debt), 2) AS avg_debt,
    ROUND(AVG(operating_cash_flow), 2) AS avg_ocf,
    ROUND(AVG(debt_to_equity), 2) AS avg_debt_to_equity,
    ROUND(AVG(interest_coverage), 2) AS avg_interest_coverage,
    ROUND(AVG(ocf_to_debt), 2) AS avg_ocf_to_debt
FROM credit_risk_data
GROUP BY overall_risk_category
ORDER BY overall_risk_category;
