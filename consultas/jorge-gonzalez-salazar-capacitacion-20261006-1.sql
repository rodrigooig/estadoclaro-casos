-- Screen current officeholders with a controlled, non-widely-held declared supplier,
-- at least three in-period orders and a direct-award/Compra Ágil signal.
-- Gold cutoff: meta.build_date=2026-10-06T15:56:08+00:00.
SELECT d.full_name, x.institution, x.position, ds.legal_name, ds.supplier_name,
       ds.n_orders_during, ds.amount_clp_during, ds.n_buyers, ds.n_direct_award,
       ds.n_agile, ds.n_same_institution, ds.first_order_date, ds.last_order_date,
       ds.name_similarity
FROM declared_supply ds
JOIN (SELECT DISTINCT person_id, institution, position, is_current FROM declaration) x USING (person_id)
JOIN declarant d USING (person_id)
WHERE x.is_current AND ds.is_controlling AND ds.n_orders_during >= 3
  AND ds.n_direct_award >= 1 AND ds.n_declarants <= 2
  AND ds.is_widely_held = false AND ds.name_similarity >= 0.65
ORDER BY ds.amount_clp_during DESC NULLS LAST
LIMIT 60;
