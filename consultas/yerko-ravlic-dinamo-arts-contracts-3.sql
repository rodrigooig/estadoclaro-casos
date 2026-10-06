-- Corte: meta.build_date 2026-10-02T15:43:07+00:00
-- Control reproducible de unicidad, compradores y suma nominal en la misma ventana.
SELECT
    COUNT(*) AS count_rows,
    COUNT(DISTINCT order_code) AS unique_codes,
    COUNT(DISTINCT buyer_key) AS buyer_keys,
    SUM(amount_clp) AS nominal_clp,
    MIN(sent_date) AS first_date,
    MAX(sent_date) AS last_date,
    COUNT(*) FILTER (WHERE exclusion_reason IS NOT NULL AND exclusion_reason <> '') AS excluded_rows
FROM purchase_order
WHERE supplier_rut = '76195295'
  AND sent_date >= DATE '2024-12-06';
