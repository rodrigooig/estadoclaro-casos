-- Reproducción de identidad declarada, cargos/declaraciones y OC específica.
-- Solo lectura con ec-gold-sql. Corte 2026-10-21T19:32:15+00:00.
SELECT p.full_name, d.source_id, d.declaration_date, d.start_date,
       d.position, d.institution, c.legal_name, c.company_rut,
       c.quantity, c.is_controlling,
       po.order_code, po.sent_date, po.status, po.route, po.is_direct_award,
       po.buyer_name, po.supplier_name, po.supplier_rut,
       po.amount_clp, po.amount_uf
FROM person p
JOIN declaration d USING (person_id)
JOIN company c USING (declaration_id)
JOIN purchase_order po ON po.supplier_rut = c.company_rut
WHERE p.full_name = 'PABLO ALLARD SERRANO'
  AND c.company_rut = '76598791'
  AND po.order_code = '2659-252-SE23'
ORDER BY d.declaration_date, d.source_id;
