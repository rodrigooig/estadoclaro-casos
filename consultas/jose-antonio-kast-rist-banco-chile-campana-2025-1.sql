-- Hechos de declaración cruzados con el libro electoral; base gold read-only.
SELECT d.declaration_id, d.source_id, d.declaration_date, d.position, d.institution,
       co.company_rut, co.legal_name, co.type, co.value_clp, co.quantity,
       co.is_controlling, co.business_activity
FROM declaration d JOIN company co USING (declaration_id)
WHERE d.person_id = 'd5af2db10b6e6b27b8b085531be4ea73'
  AND co.company_rut = '97004000'
ORDER BY d.declaration_date;

SELECT c.campaign_id, c.name, c.election_year, c.office, c.audit_status, c.outcome,
       s.legal_name, s.participation_type, s.is_controlling, s.amount_clp, s.amount_uf,
       s.description, s.is_rejected, s.reimbursement_type
FROM campaign c JOIN campaign_self_supply s USING (campaign_id)
WHERE c.person_id = 'd5af2db10b6b27b8b085531be4ea73'
  AND c.election_year = 2025;

-- Buscar compras estatales del RUT societario de la declaración; cero filas significa
-- que el oro no muestra OCs de Banco de Chile, no que no existan fuera de su cobertura.
SELECT order_code, sent_date, status, buyer_name, amount_clp, route
FROM purchase_order WHERE supplier_rut = '97004000'
ORDER BY sent_date DESC;
