-- Pista campana_autoproveedor: confirmar persona, candidatura, gasto, auditoría y participación.
select
  c.campaign_id, c.election_name, c.election_year, c.election_date, c.office,
  c.region, c.name, c.audit_status, c.has_ledger, c.outcome,
  c.expense_clp, c.rejected_expense_clp, c.reimbursement_requested_clp,
  c.source_uri,
  p.full_name, d.declaration_date, d.position, d.source_id,
  co.company_rut, co.legal_name, co.type, co.quantity, co.is_controlling,
  co.acquisition_date,
  e.line_id, e.supplier_rut, e.dv_matches, e.supplier_name, e.document_date,
  e.amount_clp, e.amount_uf, e.document_type, e.document_number,
  e.account_label, e.is_rejected, e.reimbursement_type, e.reimbursement_requested
from campaign_self_supply s
join campaign c using (campaign_id)
join person p on p.person_id = s.person_id
join declaration d on d.declaration_id = s.declaration_id
join company co on co.declaration_id = s.declaration_id and co.asset_id = s.asset_id
left join campaign_expense e on e.campaign_id = s.campaign_id and e.line_id = s.line_id
where s.campaign_id = '51e6f919d5429b60073162f7b62ccd47';
