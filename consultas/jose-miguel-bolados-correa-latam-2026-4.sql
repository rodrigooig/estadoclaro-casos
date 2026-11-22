-- La campaña 2024 no atribuye gasto a las sociedades declaradas (medida agregada por campaña).
SELECT p.full_name,c.election_name,c.election_year,c.audit_status,c.expense_clp,
       COUNT(e.line_id) AS n_expense_lines,
       COUNT(*) FILTER(WHERE e.supplier_rut IN ('76855344','89862200')) AS n_lines_matching_declared_company_bodies
FROM campaign c JOIN declarant p USING(person_id)
LEFT JOIN campaign_expense e USING(campaign_id)
WHERE p.full_name='JOSE MIGUEL BOLADOS CORREA'
GROUP BY p.full_name,c.election_name,c.election_year,c.audit_status,c.expense_clp;
