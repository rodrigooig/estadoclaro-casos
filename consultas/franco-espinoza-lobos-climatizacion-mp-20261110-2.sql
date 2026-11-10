WITH ordered AS (
  SELECT
    order_code, sent_date, buyer_name, buyer_key, amount_clp, amount_uf,
    is_direct_award, is_agile, exclusion_reason,
    ROW_NUMBER() OVER (PARTITION BY order_code ORDER BY sent_date DESC) AS rn
  FROM declared_supply_order
  WHERE supplier_rut = '76183919'
    AND person_id = '1e6ad42d19fea86c90e461b8b6d04c6f'
    AND timing = 'during'
    AND is_primary_for_person = true
)
SELECT
  COUNT(*) FILTER (WHERE sent_date >= DATE '2021-06-14') AS orders_since_assumption,
  COUNT(DISTINCT buyer_key) FILTER (WHERE sent_date >= DATE '2021-06-14') AS buyers_since_assumption,
  SUM(amount_clp) FILTER (WHERE sent_date >= DATE '2021-06-14') AS amount_clp_since_assumption,
  SUM(amount_uf) FILTER (WHERE sent_date >= DATE '2021-06-14') AS amount_uf_since_assumption,
  COUNT(*) FILTER (WHERE sent_date >= DATE '2021-06-14' AND is_direct_award) AS direct_award_since_assumption,
  COUNT(*) FILTER (WHERE sent_date >= DATE '2021-06-14' AND is_agile) AS agile_since_assumption,
  COUNT(*) FILTER (WHERE sent_date >= DATE '2021-06-14' AND buyer_key = 'CORPORACION ADMINISTRATIVA DEL PODER JUDICIAL') AS capj_buyer_rows,
  COUNT(*) FILTER (WHERE sent_date >= DATE '2021-06-14' AND buyer_key = 'PODER JUDICIAL') AS pjud_buyer_rows
FROM ordered
WHERE rn = 1 AND COALESCE(exclusion_reason, '') = '';
