-- Inspect records that share supplier RUT 5.589.445 in the declaration data.
-- Read alongside InfoProbidad ID 5043507: these are bank deposits, not shares
-- or rights in the person acting as individual supplier.
SELECT p.full_name, d.source_id, d.declaration_date, d.position,
       c.legal_name, c.company_rut, c.type, c.value_clp, c.is_controlling
FROM person p
JOIN declaration d USING (person_id)
JOIN company c USING (declaration_id)
WHERE p.full_name = 'JULIO MARIO ANGULO MATAMALA'
  AND c.company_rut = '5589445'
ORDER BY d.declaration_date, c.legal_name;
