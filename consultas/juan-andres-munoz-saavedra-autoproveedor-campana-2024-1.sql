-- Fuente reproducible de la pista y sus montos. Oro solo lectura; corte 2026-10-27T15:25:49+00:00.
SELECT c.name, c.office, c.election_year, c.audit_status,
       c.expense_clp, c.rejected_expense_clp,
       COUNT(*) AS n_self_supply_lines,
       SUM(cs.amount_clp) AS self_supply_clp,
       SUM(cs.amount_uf) AS self_supply_uf,
       COUNT(*) FILTER (WHERE cs.is_rejected) AS rejected_lines,
       co.company_rut, co.legal_name, co.type, co.is_controlling, co.value_clp,
       d.declaration_date, d.declaration_type, d.position, d.institution, d.source_id
FROM campaign_self_supply cs
JOIN campaign c USING (campaign_id)
JOIN company co ON co.declaration_id = cs.declaration_id AND co.asset_id = cs.asset_id
JOIN declaration d ON d.declaration_id = cs.declaration_id
WHERE c.name = 'JUAN ANDRES MUÑOZ SAAVEDRA'
  AND cs.legal_name = 'INVERSIONES MUNOZ Y SAAVEDRA LTDA'
GROUP BY c.name, c.office, c.election_year, c.audit_status,
         c.expense_clp, c.rejected_expense_clp,
         co.company_rut, co.legal_name, co.type, co.is_controlling, co.value_clp,
         d.declaration_date, d.declaration_type, d.position, d.institution, d.source_id;
