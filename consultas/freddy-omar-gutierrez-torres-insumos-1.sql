-- Exact-name declaration profile and declared supplier link; omits personal RUT.
SELECT DISTINCT
    d.full_name,
    p.declaration_date,
    p.declaration_type,
    p.institution,
    p.position,
    p.source_uri,
    s.legal_name,
    s.supplier_rut,
    s.supplier_dv,
    s.supplier_name,
    s.supplier_activity,
    s.is_controlling,
    s.article_4_stake,
    s.n_orders_during,
    s.n_orders_after,
    s.n_orders_company,
    s.n_buyers,
    s.n_same_institution,
    s.amount_clp_during,
    c.quantity,
    c.value_clp,
    c.business_activity,
    c.acquisition_date
FROM panel p
JOIN declarant d USING (person_id)
JOIN declared_supply s USING (person_id)
JOIN company c USING (declaration_id)
WHERE d.full_name = 'FREDDY OMAR GUTIERREZ TORRES'
  AND p.declaration_date = DATE '2022-07-04'
  AND c.legal_name = s.legal_name
ORDER BY s.legal_name;
