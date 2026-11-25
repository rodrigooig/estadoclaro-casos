-- Corte gold.meta.build_date = 2026-11-24T20:08:20+00:00; ejecutar solo con ec-gold-sql.
-- Verifica declaración y órdenes de la sociedad por RUT.
SELECT p.full_name, p.person_id, d.source_id, d.declaration_date,
       d.position, d.institution, c.legal_name, c.company_rut, c.type,
       c.quantity, c.is_controlling, c.value_clp,
       o.order_code, o.url, o.sent_date, o.status, o.route,
       o.amount_clp, o.amount_uf, o.buyer_name, o.name_similarity,
       o.timing, o.same_institution
FROM declaration d
JOIN person p ON p.person_id = d.person_id
JOIN company c ON c.declaration_id = d.declaration_id
JOIN declared_supply_order o
  ON o.declaration_id = d.declaration_id
 AND o.supplier_rut = regexp_replace(c.company_rut, '[^0-9]', '')
WHERE p.full_name = 'ANGEL GONZÁLEZ AGUILERA'
  AND d.source_id = '1806799'
ORDER BY o.sent_date;
