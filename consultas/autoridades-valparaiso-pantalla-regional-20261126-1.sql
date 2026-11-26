-- Triage focalizado de La Cruz: identidad, sociedad declarada, contratación pública y campaña.
-- Ejecutar únicamente con ec-gold-sql (solo lectura).
SELECT
  meta.value AS gold_build_date,
  d.full_name,
  de.source_id,
  de.declaration_date,
  de.institution,
  de.position,
  co.legal_name,
  co.company_rut,
  co.type AS participation_type,
  co.quantity,
  (SELECT count(*) FROM supplier s WHERE s.supplier_rut = co.company_rut) AS supplier_rows,
  (SELECT count(*) FROM purchase_order po WHERE po.supplier_rut = co.company_rut) AS purchase_order_rows,
  c.name AS servel_campaign_name,
  c.election_year,
  c.office AS campaign_office,
  c.territory AS campaign_territory,
  c.audit_status,
  c.expense_clp,
  c.rejected_expense_clp,
  c.source_uri AS servel_source_uri
FROM declaration de
JOIN declarant d USING (person_id)
JOIN company co USING (declaration_id)
JOIN meta ON meta.key = 'build_date'
LEFT JOIN campaign c ON upper(c.name) LIKE '%FILOMENA%NAVIA%'
WHERE de.source_id = '1747669';
