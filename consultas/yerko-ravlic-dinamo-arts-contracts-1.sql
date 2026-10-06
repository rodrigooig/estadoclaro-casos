-- Corte: meta.build_date 2026-10-02T15:43:07+00:00
-- Snapshot actual y empresa declarada unida a Mercado Público por RUT exacto.
SELECT
    p.declaration_date,
    c.legal_name,
    c.company_rut,
    c.quantity,
    c.type,
    c.is_controlling,
    c.acquisition_date,
    s.n_orders_during,
    s.n_orders_after,
    s.n_orders_excluded,
    s.n_buyers,
    s.n_same_institution,
    s.n_direct_award,
    s.n_agile,
    s.first_order_date,
    s.last_order_date,
    s.amount_clp_during,
    s.n_orders_company,
    s.amount_clp_company,
    s.company_first_order,
    s.company_last_order
FROM panel AS p
JOIN declarant AS d USING (person_id)
JOIN company AS c USING (declaration_id)
LEFT JOIN declared_supply AS s
  ON s.person_id = p.person_id
 AND s.supplier_rut = c.company_rut
WHERE d.full_name = 'YERKO NAJIB RAVLIC ELAL'
  AND p.is_current
  AND c.company_rut = '76195295'
ORDER BY p.declaration_date DESC;
