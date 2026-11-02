-- Oro solo lectura. Hecho a verificar: candidato controlador declara la EIRL
-- que registra factura de propaganda radial a su propia campaña.
SELECT
  c.name AS campaign_name, c.office, c.territory, c.audit_status,
  c.outcome, c.source_uri AS servel_report,
  css.line_id, css.amount_clp, css.amount_uf, css.is_rejected,
  css.reimbursement_type, css.description,
  d.source_id AS infoprobidad_id, d.declaration_date, d.position,
  co.legal_name, co.company_rut, co.type, co.quantity,
  co.is_controlling, co.value_clp, co.acquisition_date
FROM campaign_self_supply css
JOIN campaign c USING (campaign_id)
JOIN declaration d USING (declaration_id)
JOIN company co USING (declaration_id, asset_id)
WHERE c.name = 'ARTURO JARA CARRASCO';
