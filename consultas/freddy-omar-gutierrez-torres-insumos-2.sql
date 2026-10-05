-- Unique procurement order counts, split by official appointment/resignation dates.
SELECT
    CASE
        WHEN sent_date < DATE '2021-09-03' THEN 'before appointment'
        WHEN sent_date <= DATE '2022-03-11' THEN 'documented tenure'
        ELSE 'after documented resignation'
    END AS period,
    COUNT(DISTINCT order_code) AS orders,
    SUM(amount_clp) AS nominal_clp,
    COUNT(DISTINCT buyer_code) AS buyers,
    COUNT(DISTINCT CASE WHEN is_direct_award THEN order_code END) AS direct_awards,
    MIN(sent_date) AS first_date,
    MAX(sent_date) AS last_date
FROM purchase_order
WHERE supplier_rut = '76500119'
  AND sent_date BETWEEN DATE '2020-01-01' AND DATE '2024-12-31'
GROUP BY 1
ORDER BY 1;
