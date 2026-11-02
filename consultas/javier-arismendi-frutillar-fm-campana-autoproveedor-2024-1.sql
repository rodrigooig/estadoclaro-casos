-- Hecho central: cuatro registros de campaña asociados a la sociedad declarada.
SELECT
  c.name AS candidatura,
  c.election_year,
  c.audit_status,
  MAX(c.rejected_expense_clp) AS total_gastos_rechazados_clp,
  cs.legal_name,
  cs.participation_type,
  cs.is_controlling,
  cs.is_closely_held,
  COUNT(*) AS lineas,
  SUM(cs.amount_clp) AS monto_clp,
  ROUND(SUM(cs.amount_uf), 2) AS monto_uf,
  COUNT(*) FILTER (WHERE cs.is_rejected) AS lineas_rechazadas,
  STRING_AGG(cs.description, ' | ' ORDER BY cs.amount_clp DESC) AS descripciones
FROM campaign_self_supply cs
JOIN campaign c USING (campaign_id)
WHERE cs.campaign_id = 'b92bef2a9b2f7fcf43b8c41b37ce40d9'
GROUP BY c.name, c.election_year, c.audit_status, cs.legal_name,
         cs.participation_type, cs.is_controlling, cs.is_closely_held;
