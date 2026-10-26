-- Gold de solo lectura; corte 2026-10-23T14:20:50+00:00.
-- Declaración contemporánea: participación y control declarados.
SELECT p.full_name, c.company_rut, c.legal_name, c.type, c.quantity, c.is_controlling,
       d.declaration_date, d.position, d.institution, d.source_id
FROM company c
JOIN declaration d USING (declaration_id)
JOIN person p USING (person_id)
WHERE p.full_name = 'JORGE LUIS OMAR GARCES ROJAS'
  AND c.company_rut = '76214007';
