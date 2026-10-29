-- Vittorio Canessa: declaración InfoProbidad × gasto Servel.
-- Gold read-only; corte meta.build_date = 2026-10-27T15:25:49+00:00.
SELECT
  p.full_name,
  d.declaration_id,
  d.source_id AS declaration_source_id,
  d.declaration_date,
  d.position AS declared_position,
  comp.legal_name AS declared_company,
  comp.company_rut AS declared_company_rut_body,
  comp.type AS declared_participation_type,
  comp.value_clp AS declared_value_clp,
  comp.is_controlling,
  comp.quantity AS declared_quantity_or_percent,
  comp.acquisition_date,
  c.campaign_id,
  c.name AS campaign_candidate,
  c.office AS candidacy,
  c.region,
  c.audit_status,
  e.line_id,
  e.supplier_rut AS servel_supplier_rut_body,
  e.supplier_name AS servel_supplier_name,
  e.document_date,
  e.amount_clp,
  e.amount_uf,
  e.document_type,
  e.document_number,
  e.account_label,
  e.is_rejected,
  e.reimbursement_type,
  e.reimbursement_requested,
  c.source_uri AS servel_source
FROM campaign c
JOIN person p ON p.person_id = c.person_id
JOIN declaration d ON d.person_id = p.person_id
JOIN company comp ON comp.declaration_id = d.declaration_id
JOIN campaign_expense e ON e.campaign_id = c.campaign_id
WHERE c.campaign_id = '17ecf8362d52b5ce566f4b16c1daf9c5'
  AND d.declaration_id = 'declaracion_a16ccc018591cffebbdd8731b345736e'
  AND e.line_id = 394219;
