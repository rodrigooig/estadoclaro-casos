SELECT
  p.person_id, p.name, p.paternal_surname, p.maternal_surname,
  d.declaration_date, d.source_id, c.company_rut, c.legal_name,
  c.type, c.quantity, c.is_controlling,
  ca.election_year, ca.office, ca.territory, ca.audit_status,
  cs.line_id, cs.amount_clp, cs.amount_uf, cs.is_rejected,
  cs.reimbursement_type, cs.description
FROM campaign_self_supply cs
JOIN person p USING (person_id)
JOIN declaration d ON d.declaration_id = cs.declaration_id
JOIN company c ON c.declaration_id = cs.declaration_id AND c.asset_id = cs.asset_id
JOIN campaign ca USING (campaign_id)
WHERE p.paternal_surname = 'PEREZ'
  AND p.maternal_surname = 'MONJE'
ORDER BY cs.line_id;
