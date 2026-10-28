-- Corrección de afirmación sobre SERVEL en el caso publicado de Verónica Rossat.
-- Lee gasto, estado de auditoría y declaración societaria presentada como candidata.
SELECT
    c.name AS candidate,
    c.office,
    c.election_year,
    c.audit_status,
    c.source_uri AS servel_source,
    e.document_date,
    e.supplier_name,
    e.supplier_rut,
    e.amount_clp,
    e.amount_uf,
    e.document_type,
    e.document_number,
    e.account_label,
    e.is_rejected,
    e.reimbursement_type,
    e.reimbursement_requested
FROM campaign c
JOIN campaign_expense e USING (campaign_id)
WHERE c.person_id = '86747778f0287ae0bbfa099d79535910'
  AND c.election_year = 2024
  AND e.supplier_rut = '76250655';

SELECT
    d.source_id,
    d.declaration_date,
    d.position,
    co.legal_name,
    co.company_rut,
    co.type,
    co.quantity AS declared_percentage,
    co.value_clp,
    co.acquisition_date
FROM declaration d
JOIN company co USING (declaration_id)
WHERE d.source_id = 1236964
  AND regexp_replace(co.company_rut, '[^0-9]', '', 'g') = '76250655';
