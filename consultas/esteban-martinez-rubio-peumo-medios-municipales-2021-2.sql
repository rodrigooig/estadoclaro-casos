SELECT
  c.election_year,
  c.name,
  c.office,
  c.region,
  c.audit_status,
  c.expense_clp,
  c.source_uri,
  s.line_id,
  s.legal_name,
  s.amount_clp,
  s.is_rejected,
  s.description
FROM campaign c
LEFT JOIN campaign_self_supply s USING (campaign_id)
WHERE c.election_year = 2024
  AND c.name ILIKE '%ESTEBAN%MARTINEZ%RUBIO%'
ORDER BY s.line_id