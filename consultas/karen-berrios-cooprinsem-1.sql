SELECT
    p.full_name,
    x.declaration_date,
    x.declaration_type,
    x.institution,
    x.position,
    x.source_uri,
    c.legal_name,
    c.company_rut,
    c.business_activity,
    c.type,
    c.quantity,
    c.is_controlling,
    c.acquisition_date,
    c.value_clp,
    c.currency
FROM panel x
JOIN person p USING (person_id)
JOIN company c USING (declaration_id)
WHERE p.full_name = 'KAREN ALEJANDRA BERRIOS GUERRA'
  AND x.declaration_id = 'declaracion_97084b76b723a614c85090c030d15321'
  AND c.company_rut IN ('82392600-6', '82392600')
ORDER BY c.legal_name;
