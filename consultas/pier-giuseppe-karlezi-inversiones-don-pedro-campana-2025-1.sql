-- Pista: campaña 2025 de Pier Giuseppe Karlezi / Inversiones Don Pedro SpA.
-- Oro de solo lectura; cotejar las filas con las fuentes primarias citadas en la ficha.
SELECT
  p.full_name,
  d.source_id AS declaration_source_id,
  d.declaration_date,
  d.position,
  d.institution,
  co.legal_name,
  co.company_rut,
  co.type,
  co.quantity,
  co.value_clp,
  co.is_controlling,
  c.election_year,
  c.office AS candidacy,
  c.region,
  c.audit_status,
  c.outcome,
  ce.document_number,
  ce.document_date,
  ce.supplier_rut,
  ce.supplier_name,
  ce.amount_clp,
  ce.amount_uf,
  ce.account_label,
  css.description AS self_supply_description,
  ce.reimbursement_type
FROM person p
JOIN declaration d ON d.person_id = p.person_id
JOIN company co ON co.declaration_id = d.declaration_id
JOIN campaign c ON c.person_id = p.person_id
JOIN campaign_expense ce ON ce.campaign_id = c.campaign_id
LEFT JOIN campaign_self_supply css ON css.line_id = ce.line_id AND css.person_id = p.person_id
WHERE p.full_name = 'PIER GIUSEPPE KARLEZI HAZLEBY'
  AND d.source_id = '1504512'
  AND co.company_rut = '77741416'
  AND c.election_year = 2025
  AND ce.supplier_rut = '77741416'
  AND ce.document_number = '22'
ORDER BY d.declaration_date, ce.document_date, ce.amount_clp;
