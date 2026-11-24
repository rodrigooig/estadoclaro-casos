-- Confirma la declaración fechada y la participación en la sociedad por RUT.
SELECT
  d.full_name,
  dec.declaration_date,
  dec.position,
  dec.institution,
  dec.source_id,
  c.legal_name,
  c.company_rut,
  c.type,
  c.quantity,
  c.value_clp,
  c.business_activity,
  c.is_controlling
FROM declaration dec
JOIN declarant d USING (person_id)
JOIN company c USING (declaration_id)
WHERE upper(d.full_name) LIKE '%JUAN%SANTANA PAREDES%'
  AND c.company_rut = '77899827'
ORDER BY dec.declaration_date;
