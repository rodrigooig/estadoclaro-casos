-- Contrasta el registro de campaña municipal 2024 del candidato/declarant con RUT de la sociedad y autoabastecimiento.
SELECT c.name, c.election_key, c.election_year, c.office, c.audit_status,
       c.n_self_supply, c.self_supply_clp, c.self_supply_rejected_clp,
       count(ce.line_id) FILTER (WHERE ce.supplier_rut = '77707498') AS expense_lines_to_lafken
FROM campaign c
LEFT JOIN campaign_expense ce USING (campaign_id)
WHERE c.person_id = 'aae5b3a0fb09c8574b4a47081ed6ce97'
GROUP BY ALL;
