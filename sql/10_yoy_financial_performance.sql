WITH yearly_financials AS (
    SELECT
        financial_year,
        SUM(revenue) AS revenue,
        SUM(operating_profit) AS operating_profit,
        SUM(net_profit) AS net_profit,
        SUM(debt) AS debt,
        SUM(operating_cash_flow) AS operating_cash_flow
    FROM credit_risk_data
    GROUP BY financial_year
)

SELECT
    financial_year,
    revenue,
    operating_profit,
    net_profit,
    debt,
    operating_cash_flow,

    ROUND(
        (revenue - LAG(revenue) OVER (ORDER BY financial_year))
        * 100.0 /
        NULLIF(LAG(revenue) OVER (ORDER BY financial_year), 0),
        2
    ) AS revenue_yoy_pct,

    ROUND(
        (operating_profit - LAG(operating_profit) OVER (ORDER BY financial_year))
        * 100.0 /
        NULLIF(LAG(operating_profit) OVER (ORDER BY financial_year), 0),
        2
    ) AS operating_profit_yoy_pct,

    ROUND(
        (net_profit - LAG(net_profit) OVER (ORDER BY financial_year))
        * 100.0 /
        NULLIF(LAG(net_profit) OVER (ORDER BY financial_year), 0),
        2
    ) AS net_profit_yoy_pct,

    ROUND(
        (debt - LAG(debt) OVER (ORDER BY financial_year))
        * 100.0 /
        NULLIF(LAG(debt) OVER (ORDER BY financial_year), 0),
        2
    ) AS debt_yoy_pct,

    ROUND(
        (operating_cash_flow - LAG(operating_cash_flow) OVER (ORDER BY financial_year))
        * 100.0 /
        NULLIF(LAG(operating_cash_flow) OVER (ORDER BY financial_year), 0),
        2
    ) AS ocf_yoy_pct

FROM yearly_financials
ORDER BY financial_year;
