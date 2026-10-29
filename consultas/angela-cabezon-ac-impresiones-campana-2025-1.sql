-- Semilla e investigación de Angela Cabezón Contreras / AC Impresiones SpA.
-- Corte del gold: meta.build_date. RUT se cruza por cuerpo exacto.
SELECT
  (SELECT value FROM meta WHERE key='build_date') AS gold_cut,
  d.declaration_date,
  d.position,
  d.institution,
  d.source_id AS declaration_id,
  c.legal_name,
  c.company_rut AS company_rut_body,
  c.value_clp AS declared_value_clp,
  c.quantity,
  c.is_controlling,
  ce.document_date AS campaign_expense_date,
  ce.document_number,
  ce.amount_clp AS campaign_amount_clp,
  ce.amount_uf AS campaign_amount_uf,
  ce.account_label,
  ce.is_rejected,
  ce.reimbursement_type,
  ca.audit_status,
  ca.source_uri AS servel_source,
  po.n_orders,
  po.first_order,
  po.last_order,
  po.amount_clp_orders,
  po.amount_uf_orders,
  po.n_after_candidate_declaration
FROM declaration d
JOIN company c USING (declaration_id)
JOIN campaign ca ON ca.person_id=d.person_id AND ca.election_year=2025
JOIN campaign_expense ce ON ce.campaign_id=ca.campaign_id AND ce.supplier_rut='77143924'
LEFT JOIN (
  SELECT supplier_rut, count(*) n_orders, min(sent_date) first_order,
         max(sent_date) last_order, sum(amount_clp) amount_clp_orders,
         sum(amount_uf) amount_uf_orders,
         count(*) FILTER (WHERE sent_date >= DATE '2025-08-20') n_after_candidate_declaration
  FROM purchase_order WHERE supplier_rut='77143924' GROUP BY supplier_rut
) po ON po.supplier_rut=c.company_rut
WHERE d.source_id='1505058' AND c.company_rut='77143924';
