-- Jesus del Carmen Orellana Prado: primary-keyed cross between declaration and Servel campaign expense.
-- Read-only gold cut: 2026-11-17T18:25:42+00:00
SELECT
  p.full_name,
  c.election_name,
  c.office,
  c.territory,
  c.audit_status,
  cs.line_id,
  cs.description,
  cs.amount_clp,
  cs.amount_uf,
  cs.is_rejected,
  cs.reimbursement_type,
  cs.declaration_id,
  d.source_id,
  d.declaration_date,
  co.legal_name,
  co.company_rut,
  co.quantity,
  co.is_controlling,
  ce.supplier_rut,
  ce.supplier_name,
  ce.document_date,
  ce.document_number,
  ce.account_label,
  ce.amount_clp AS expense_amount_clp,
  ce.is_rejected AS expense_is_rejected,
  ce.reimbursement_requested
FROM campaign_self_supply cs
JOIN person p USING (person_id)
JOIN campaign c USING (campaign_id)
JOIN declaration d USING (declaration_id)
JOIN company co ON co.declaration_id = cs.declaration_id AND co.asset_id = cs.asset_id
JOIN campaign_expense ce ON ce.campaign_id = cs.campaign_id AND ce.line_id = cs.line_id
WHERE p.full_name = 'JESUS DEL CARMEN ORELLANA PRADO'
  AND cs.line_id = 299609;
