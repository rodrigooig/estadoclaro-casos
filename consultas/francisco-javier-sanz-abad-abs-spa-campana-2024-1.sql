-- Pista: Francisco Javier Sanz Abad / ABS SPA.
-- Verifica la línea de gasto Servel, la declaración societaria enlazada por ID
-- interno y el resultado global de auditoría. El RUT societario es una llave
-- pública de la fuente; la calidad de controlador y el 75% proceden de la
-- declaración primaria enlazada en la ficha.
SELECT
  c.campaign_id, c.name, c.office, c.region, c.election_year,
  c.audit_status, c.source_uri,
  e.line_id, e.supplier_rut, e.supplier_name, e.document_date,
  e.amount_clp, e.amount_uf, e.document_type, e.document_number,
  e.account_label, e.is_rejected, e.reimbursement_type,
  e.reimbursement_requested,
  s.declaration_id, s.asset_id, s.legal_name, s.participation_type,
  s.is_controlling, s.amount_clp AS self_supply_amount_clp,
  co.company_rut, co.type AS declaration_type
FROM campaign_expense e
JOIN campaign c USING (campaign_id)
JOIN campaign_self_supply s
  ON s.campaign_id = e.campaign_id AND s.line_id = e.line_id
JOIN company co
  ON co.declaration_id = s.declaration_id AND co.asset_id = s.asset_id
WHERE c.name = 'FRANCISCO JAVIER SANZ ABAD'
  AND e.supplier_rut = '76505155'
  AND e.line_id = 82283;
