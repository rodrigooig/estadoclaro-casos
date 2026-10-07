-- Exact-name and exact-company-RUT verification for OC 2659-252-SE23.
-- Execute only with ec-gold-sql against the synced read-only gold.
-- Artifact cutoff: 2026-10-06T15:56:08Z.
SELECT p.full_name, d.source_id, d.declaration_date, d.institution, d.position,
       c.legal_name AS declared_company, c.company_rut, c.quantity,
       c.is_controlling, c.business_activity, c.acquisition_date,
       po.order_code, po.sent_date, po.status, po.route, po.is_direct_award,
       po.buyer_name, po.supplier_name, po.supplier_rut,
       po.amount_clp AS artifact_amount_clp, po.amount_uf AS artifact_amount_uf,
       po.url
FROM person p
JOIN declaration d USING (person_id)
JOIN company c USING (declaration_id)
JOIN purchase_order po ON po.supplier_rut = c.company_rut
WHERE p.full_name = 'PABLO ALLARD SERRANO'
  AND d.source_id = '912542'
  AND c.company_rut = '76598791'
  AND po.order_code = '2659-252-SE23'
ORDER BY d.declaration_date;