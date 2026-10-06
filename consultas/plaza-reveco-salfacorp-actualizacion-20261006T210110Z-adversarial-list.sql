-- Independent adversarial rerun: list matching declaration/procurement rows.
-- Artifact cutoff: 2026-10-06T15:56:08Z. Execute only with ec-gold-sql.
SELECT d.full_name, p.declaration_id, p.declaration_date, p.institution, p.position,
       c.legal_name AS declared_label, c.company_rut, c.quantity, c.value_clp,
       c.acquisition_date, c.is_controlling,
       po.order_code, po.sent_date, po.buyer_name, po.supplier_name,
       po.supplier_rut, po.amount_clp, po.amount_uf, po.status, po.route,
       po.tender_code, po.url
FROM panel AS p
JOIN declarant AS d USING (person_id)
JOIN company AS c USING (declaration_id)
JOIN purchase_order AS po
  ON po.supplier_rut = c.company_rut
 AND po.sent_date >= c.acquisition_date
 AND po.sent_date <= p.declaration_date
WHERE d.full_name = 'RAFAEL MAURICIO PLAZA REVECO'
  AND p.declaration_date = DATE '2026-09-24'
  AND c.company_rut = '93659000'
ORDER BY po.sent_date, po.order_code;