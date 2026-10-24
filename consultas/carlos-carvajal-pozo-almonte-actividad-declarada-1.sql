-- Identidad, participación declarada y órdenes al organismo donde InfoProbidad registra actividad remunerada.
SELECT d.declaration_date, d.source_id, d.institution, d.position,
       c.legal_name, c.company_rut, c.quantity, c.is_controlling
FROM company c
JOIN declaration d USING (declaration_id)
JOIN person p USING (person_id)
WHERE p.full_name = 'CARLOS JOSE CARVAJAL GALLARDO'
  AND c.company_rut = '77167947'
ORDER BY d.declaration_date;

-- Órdenes únicas: purchase_order tiene una fila por código vigente.
SELECT order_code, url, sent_date, status, route, is_direct_award, tender_code,
       buyer_name, amount_clp, amount_uf, supplier_rut, supplier_name
FROM purchase_order
WHERE supplier_rut = '77167947'
  AND buyer_name ILIKE '%POZO ALMONTE%'
ORDER BY sent_date, order_code;
