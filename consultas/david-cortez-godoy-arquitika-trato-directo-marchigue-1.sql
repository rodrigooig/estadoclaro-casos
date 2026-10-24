SELECT
    d.full_name,
    dec.position,
    dec.institution,
    dec.declaration_date,
    dec.start_date,
    dec.source_id,
    c.legal_name,
    c.company_rut,
    c.type AS participation_type,
    c.quantity,
    c.is_controlling,
    s.n_orders_during,
    s.n_orders_after,
    s.n_same_institution,
    s.n_direct_award,
    s.first_order_date,
    s.last_order_date,
    s.amount_clp_during,
    s.amount_uf_during,
    s.n_buyers,
    s.supplier_dv,
    o.order_code,
    o.url,
    o.sent_date,
    o.status,
    o.route,
    o.buyer_name,
    o.amount_clp,
    o.amount_uf,
    o.main_rubro,
    o.same_institution
FROM declared_supply s
JOIN declarant d USING (person_id)
JOIN declaration dec USING (person_id)
JOIN company c USING (declaration_id)
LEFT JOIN declared_supply_order o
    ON o.person_id = s.person_id
   AND o.supplier_rut = s.supplier_rut
WHERE lower(d.full_name) = 'david rodrigo cortez godoy'
  AND s.supplier_rut = '77686973'
  AND dec.declaration_date = DATE '2026-03-23'
  AND c.company_rut = '77686973'
  AND o.order_code = '966539-23-TD26';
