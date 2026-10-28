-- Semilla de campaña propia, oro en solo lectura.
-- Corte del artefacto: 2026-10-27T15:25:49+00:00
SELECT p.full_name, c.election_year, c.office, c.region, c.audit_status,
       s.legal_name, s.amount_clp, s.amount_uf, s.is_rejected,
       s.reimbursement_type, s.description, s.line_id,
       d.declaration_id, d.source_id, d.declaration_date, d.position, d.institution
FROM campaign_self_supply s
JOIN campaign c ON s.campaign_id=c.campaign_id
JOIN person p ON s.person_id=p.person_id
JOIN declaration d ON s.declaration_id=d.declaration_id
WHERE s.amount_clp >= 1000000
ORDER BY s.amount_clp DESC;
