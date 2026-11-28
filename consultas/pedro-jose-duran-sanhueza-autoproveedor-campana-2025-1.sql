SELECT
  p.full_name,
  cs.legal_name,
  co.company_rut,
  co.quantity AS declared_share,
  co.is_controlling,
  co.value_clp AS declared_value_clp,
  cs.line_id,
  e.document_date,
  e.document_number,
  cs.amount_clp,
  cs.amount_uf,
  e.account_label,
  cs.is_rejected,
  cs.reimbursement_type,
  e.reimbursement_requested,
  c.expense_clp AS campaign_expense_clp,
  c.audit_status,
  c.rejected_expense_clp,
  d.source_id AS declaration_source_id,
  d.declaration_date,
  d.position,
  meta.value AS gold_build_date
FROM campaign_self_supply cs
JOIN person p ON p.person_id = cs.person_id
JOIN campaign c ON c.campaign_id = cs.campaign_id
JOIN campaign_expense e ON e.line_id = cs.line_id
JOIN declaration d ON d.declaration_id = cs.declaration_id
JOIN company co ON co.declaration_id = d.declaration_id
  AND co.company_rut = '89811600'
CROSS JOIN meta
WHERE cs.line_id = 408604
  AND meta.key = 'build_date';
