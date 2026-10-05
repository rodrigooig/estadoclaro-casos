-- Exact-name profile and declared supplier links; omits personal RUTs.
SELECT DISTINCT
    d.full_name,
    p.declaration_date,
    p.declaration_type,
    p.institution,
    p.position,
    p.source_uri,
    s.legal_name,
    s.is_controlling,
    s.participation_type,
    s.n_orders_during,
    s.n_orders_after,
    s.n_orders_company,
    s.n_buyers,
    s.n_same_institution,
    s.n_direct_award,
    s.amount_clp_during,
    s.amount_clp_company,
    s.first_order_date,
    s.last_order_date
FROM panel p
JOIN declarant d USING (person_id)
JOIN declared_supply s USING (person_id)
WHERE d.full_name = 'FRANCO ISRAEL ESPINOZA LOBOS'
ORDER BY p.declaration_date DESC, s.legal_name;
