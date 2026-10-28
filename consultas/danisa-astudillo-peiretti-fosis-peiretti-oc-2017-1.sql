-- Semilla y cotejo de órdenes únicas para la sociedad declarada.
-- Solo lectura con ec-gold-sql; corte gold: 2026-10-27T15:25:49+00:00.
SELECT DISTINCT
    d.person_id, d.source_id, d.declaration_id, d.declaration_date,
    d.institution, d.position, d.start_date, d.end_date,
    c.legal_name, c.company_rut, c.type, c.is_controlling,
    c.quantity, c.value_clp,
    o.order_code, o.sent_date, o.status, o.route, o.buyer_name,
    o.amount_clp, o.amount_uf, o.url, o.timing
FROM declared_supply_order o
JOIN declaration d ON d.declaration_id = o.declaration_id
JOIN company c ON c.declaration_id = o.declaration_id
               AND c.company_rut = o.supplier_rut
WHERE o.person_id = 'a0eda9fcc32fb0b4fdecc79e8069f58a'
  AND o.supplier_rut = '78560160'
  AND o.is_primary_for_person
ORDER BY o.sent_date, o.order_code;
