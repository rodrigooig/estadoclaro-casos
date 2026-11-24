-- Hecho societario comprobable para la pista de corrección; todas las cifras del cruce se contrastan con primarias, no se infieren órdenes ni titularidad vigente en 2025.
SELECT d.source_id,
       d.declaration_date,
       d.position,
       p.full_name,
       c.company_rut,
       c.legal_name,
       c.is_controlling,
       c.quantity,
       c.value_clp,
       c.currency
FROM declaration d
JOIN person p USING (person_id)
JOIN company c USING (declaration_id)
WHERE d.source_id = '1505491'
  AND c.company_rut = '76214007';

-- Corte reproducible del artefacto consultado.
SELECT value AS build_date
FROM meta
WHERE key = 'build_date';
