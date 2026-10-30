SELECT d.source_id, d.declaration_id, d.declaration_date, d.position,
       d.institution, p.full_name, c.legal_name, c.company_rut, c.quantity,
       c.is_controlling, c.acquisition_date,
       camp.campaign_id, camp.election_name, camp.election_date, camp.office,
       camp.territory, camp.audit_status, camp.expense_clp,
       camp.reimbursement_requested_clp, camp.fiscal_reimbursement_clp,
       camp.self_supply_clp, ce.line_id, ce.document_date, ce.amount_clp,
       ce.amount_uf, ce.document_type, ce.document_number, ce.account_label,
       ce.is_rejected, ce.reimbursement_type, ce.reimbursement_requested
FROM declaration d
JOIN person p USING (person_id)
JOIN company c USING (declaration_id)
JOIN campaign camp USING (person_id)
JOIN campaign_expense ce USING (campaign_id)
WHERE d.person_id = 'cb26810a02487dd65efc9cf438b8ae37'
  AND d.source_id = '1249848'
  AND c.company_rut = '76317272'
  AND camp.election_year = 2024
  AND ce.line_id = 267822
ORDER BY d.declaration_date, ce.document_date;