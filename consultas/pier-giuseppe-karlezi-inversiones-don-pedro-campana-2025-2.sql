-- Autoproveedor de campaña 2025 de Pier Giuseppe Karlezi.
SELECT
  p.full_name,
  c.election_year,
  css.line_id,
  css.amount_clp,
  css.amount_uf,
  css.description,
  css.is_rejected,
  css.reimbursement_type,
  ce.document_number,
  ce.document_date,
  ce.supplier_rut,
  ce.supplier_name
FROM campaign_self_supply css
JOIN campaign c ON c.campaign_id = css.campaign_id
JOIN person p ON p.person_id = css.person_id
JOIN campaign_expense ce ON ce.line_id = css.line_id
WHERE p.full_name = 'PIER GIUSEPPE KARLEZI HAZLEBY'
  AND ce.supplier_rut = '77741416'
ORDER BY css.line_id;
