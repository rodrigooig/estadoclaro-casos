-- Independent adversarial query for lead pablo-allard-serrano-pasarela-vitacura.
-- The company join is intentionally not restricted to declaration_id; inspect fan-out.
-- Read-only; artifact cutoff 2026-10-06T15:56:08Z.
SELECT po.order_code, po.sent_date, po.status, po.route, po.is_direct_award,
       po.buyer_name, po.supplier_name, po.supplier_rut, po.amount_clp, po.amount_uf,
       d.source_id, d.declaration_date, d.institution, d.position,
       c.legal_name, c.company_rut, c.quantity, c.is_controlling,
       c.business_activity, c.acquisition_date
FROM purchase_order po
LEFT JOIN company c
  ON c.company_rut = po.supplier_rut
 AND c.company_rut = '76598791'
LEFT JOIN declaration d
  ON d.declaration_id = c.declaration_id
 AND d.source_id = '912542'
WHERE po.order_code = '2659-252-SE23'
ORDER BY d.declaration_date;