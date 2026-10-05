-- Link the declared share issuer to the State supplier through the gold's declared_supply mapping.
-- The source declaration redacts its corporate RUT on the public display; do not infer ownership percentage.
SELECT DISTINCT
    d.full_name,
    p.declaration_date,
    f.issuer AS declared_share_issuer,
    f.type AS declared_asset_type,
    f.quantity AS declared_quantity,
    f.value_clp AS declared_value_clp,
    s.legal_name AS linked_supplier_name,
    s.supplier_name,
    s.n_orders_company,
    s.n_buyers,
    s.n_same_institution,
    s.amount_clp_company,
    s.first_order_date,
    s.last_order_date
FROM panel p
JOIN declarant d USING (person_id)
JOIN financial_asset f USING (declaration_id)
JOIN declared_supply s USING (person_id)
WHERE d.full_name = 'FRANCO ISRAEL ESPINOZA LOBOS'
  AND p.declaration_date = DATE '2026-04-13'
  AND f.issuer = s.legal_name
  AND f.issuer = 'CLIMATIZACIÓN Y MANTENCIÓN SPA';
