-- Identidad, declaración vigente en la fecha de la OC y participación declarada.
SELECT DISTINCT
  d.full_name, p.position, p.institution, p.declaration_date, p.tenure_status,
  p.source_uri AS declaracion_url, c.company_rut, c.legal_name,
  c.type, c.quantity, c.is_controlling, c.value_clp
FROM declarant d
JOIN panel p USING (person_id)
JOIN company c USING (declaration_id)
WHERE d.person_id = '3f492683e745048f685297db0e924ef7'
  AND p.declaration_id = 'declaracion_0b4e498c7ecddbad9bb37bac75790b23'
  AND c.company_rut = '77172539';
