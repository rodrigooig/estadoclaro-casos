-- De dónde salió la pista: pantalla institucion_indeterminada.
-- Corte esperado: meta.build_date = 2026-11-22T04:10:18+00:00.
-- Consulta individualizada: sociedad declarada por César Antonio Arriagada Lira, declaración InfoProbidad 1393921.
SELECT d.source_id, d.declaration_date, d.institution, d.position,
       c.legal_name, c.company_rut, c.type, c.quantity, c.value_clp, c.is_controlling
FROM company c
JOIN declaration d USING (declaration_id)
JOIN person p USING (person_id)
WHERE p.full_name = 'CESAR ANTONIO ARRIAGADA LIRA'
  AND d.source_id = '1393921'
  AND c.company_rut = '77937257';
