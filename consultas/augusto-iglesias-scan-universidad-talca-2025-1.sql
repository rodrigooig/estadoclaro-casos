-- Augusto Iglesias Palau: transacción de una participación societaria anidada en oro, orden del proveedor y control de Servel.
-- Corte de oro esperado: 2026-11-26T01:01:56+00:00
SELECT p.full_name, d.source_id, d.declaration_date, d.position, d.institution,
       n.parent_legal_name, n.parent_quantity, n.legal_name, n.supplier_rut,
       n.quantity, n.window_start, n.window_end, n.closed_by,
       n.n_orders_during, n.n_same_institution, n.amount_clp_during,
       n.name_similarity
FROM company_nested_supply n
JOIN declaration d USING (declaration_id)
JOIN person p ON p.person_id = n.person_id
WHERE p.full_name = 'AUGUSTO IGLESIAS PALAU'
  AND n.supplier_rut = '96727470'
ORDER BY d.declaration_date DESC;

SELECT order_code, url, sent_date, buyer_name, status, route, tender_code,
       amount_clp, amount_uf, main_rubro
FROM purchase_order
WHERE supplier_rut = '96727470'
  AND order_code = '1469-3297-SE25';

SELECT COUNT(*) AS servel_campaign_rows
FROM campaign
WHERE person_id = (
  SELECT person_id FROM person WHERE full_name = 'AUGUSTO IGLESIAS PALAU'
);

SELECT key, value FROM meta WHERE key = 'build_date';
