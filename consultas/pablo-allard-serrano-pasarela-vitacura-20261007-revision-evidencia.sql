-- Independent evidence review query for lead pablo-allard-serrano-pasarela-vitacura.
-- Execute only with ec-gold-sql against the synced read-only gold.
-- Artifact cutoff: 2026-10-06T15:56:08Z.
SELECT p.full_name, d.source_id, d.declaration_date, d.position,
       c.legal_name AS declared_name, c.company_rut AS declared_rut,
       c.quantity, c.is_controlling, c.business_activity, c.acquisition_date,
       po.order_code, po.sent_date, po.buyer_name, po.supplier_name,
       po.supplier_rut, po.status, po.route, po.is_direct_award,
       po.amount_uf, po.url
FROM purchase_order po
JOIN company c ON c.company_rut = po.supplier_rut
JOIN declaration d ON d.declaration_id = c.declaration_id
JOIN person p ON p.person_id = d.person_id
WHERE po.order_code = '2659-252-SE23'
  AND d.source_id = '912542'
  AND p.full_name = 'PABLO ALLARD SERRANO'
ORDER BY d.declaration_date;