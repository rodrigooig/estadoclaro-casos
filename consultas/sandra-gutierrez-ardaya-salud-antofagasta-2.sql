-- Declaraciones y participación societaria cruzada en el oro.
-- Ejecutar con ec-gold-sql; corte meta.build_date: 2026-10-21T19:32:15+00:00
SELECT d.declaration_date, d.start_date, d.institution, d.position, d.is_current,
       c.legal_name, c.company_rut, c.is_controlling, c.type, c.quantity
FROM declaration d
JOIN company c USING (declaration_id)
WHERE d.person_id = '23a99e59194938b437dccf2bd3607f33'
ORDER BY d.declaration_date, c.legal_name;
