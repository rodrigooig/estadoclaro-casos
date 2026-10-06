-- Execution against read-only gold.duckdb; cutoff 2026-10-06T15:56:08+00:00.
-- De-duplicate by primary order code, then measure the declaration window's rows.
WITH during_orders AS (
    SELECT order_code, MAX(sent_date) AS sent_date,
           MAX(amount_clp) AS amount_clp, MAX(buyer_name) AS buyer_name,
           MAX(route) AS route, MAX(main_rubro) AS main_rubro,
           MAX(url) AS source_url, MAX(same_institution) AS same_institution
    FROM declared_supply_order
    WHERE supplier_rut = '76334863' AND timing = 'during'
    GROUP BY order_code
)
SELECT * FROM during_orders ORDER BY sent_date, order_code;
