-- Reproduce snapshots societarios, órdenes canónicas del proveedor y la OC señalada.
-- Ejecutar solo mediante ec-gold-sql sobre el artefacto de solo lectura.
SELECT d.declaration_id, d.declaration_date, d.source_id, d.institution, d.position,
       p.full_name, c.company_rut, c.legal_name, c.type, c.quantity,
       c.is_controlling, c.value_clp, c.business_activity
FROM declaration d
JOIN person p ON p.person_id = d.person_id
JOIN company c ON c.declaration_id = d.declaration_id
WHERE p.full_name = 'ALEJANDRO AGUSTÍN MUÑOZ ÁVALOS'
  AND c.company_rut = '77711116'
ORDER BY d.declaration_date;

SELECT order_code, sent_date, created_date, status, route, tender_code,
       buyer_name, supplier_rut, supplier_dv, supplier_name, amount_clp,
       amount_uf, main_rubro
FROM purchase_order
WHERE supplier_rut = '77711116'
ORDER BY sent_date;

SELECT *
FROM purchase_order
WHERE order_code = '1233619-785-SE26';

SELECT supplier_rut, supplier_dv, dv_matches, name, activity, n_orders,
       first_order_date, last_order_date, amount_clp
FROM supplier
WHERE supplier_rut = '77711116';
