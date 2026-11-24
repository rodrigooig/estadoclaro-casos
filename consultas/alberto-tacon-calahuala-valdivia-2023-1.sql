-- Sociedad declarada por Alberto Tacón y órdenes vinculadas en el gold.
-- Corte esperado: meta.build_date 2026-11-24T20:08:20+00:00
SELECT d.declaration_date, d.declaration_type, d.source_id,
       d.institution, d.position,
       c.legal_name, c.company_rut, c.business_activity, c.type,
       c.quantity, c.value_clp, c.currency, c.is_controlling,
       c.acquisition_date,
       so.order_code, so.sent_date, so.status, so.route, so.buyer_name,
       so.amount_clp, so.amount_uf, so.main_rubro, so.timing,
       so.same_institution, so.is_primary_for_person
FROM declaration d
JOIN company c USING (declaration_id)
LEFT JOIN declared_supply_order so
  ON so.person_id = d.person_id
 AND so.declaration_id = d.declaration_id
 AND so.supplier_rut = regexp_replace(c.company_rut, '[^0-9]', '')
WHERE d.person_id = '4c0804b997064b3cdf24e196e56ef1f3'
  AND c.company_rut = '76618767'
ORDER BY d.declaration_date, so.sent_date, so.order_code;
