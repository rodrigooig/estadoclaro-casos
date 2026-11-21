-- Fuente: gold.duckdb de solo lectura; corte 2026-11-20T17:45:38+00:00.
-- Participaciones y vínculo de autoridad declarados en la misma foto.
SELECT p.full_name, d.source_id, d.declaration_date, d.position, d.institution,
       c.legal_name, c.company_rut, c.type, c.quantity, c.is_controlling,
       c.acquisition_date, c.value_clp
FROM person p
JOIN declaration d ON d.person_id = p.person_id
JOIN company c ON c.declaration_id = d.declaration_id
WHERE p.person_id = 'dbf97cd5901866e7ea61d47872fe6f42'
  AND d.declaration_id = 'declaracion_8d0f8cae7814a4b7e52bce87b9609c11'
  AND c.company_rut IN ('76427324', '78320420')
ORDER BY c.company_rut;
