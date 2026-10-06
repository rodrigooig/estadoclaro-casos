-- Person, current declaration and declared ownership. Gold cutoff: 2026-10-02T15:43:07Z.
SELECT p.person_id, p.declaration_id, p.declaration_date, p.institution, p.position,
       p.source_uri, d.full_name, s.legal_name, s.supplier_rut, s.is_controlling,
       s.participation_type, s.n_orders_during, s.n_direct_award,
       s.amount_clp_during, s.first_order_date, s.last_order_date
FROM panel p
JOIN declarant d USING (person_id)
JOIN declared_supply s USING (person_id)
WHERE d.full_name = 'NIDIA DEL CARMEN IBARRA FERNANDEZ'
  AND p.is_current
  AND s.supplier_rut = '76931948';
