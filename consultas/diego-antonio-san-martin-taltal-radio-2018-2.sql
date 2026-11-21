-- Declaración primaria cotejada: InfoProbidad ID 204739; identificador de oro source_id=204739.
SELECT d.source_id,d.declaration_date,d.position,d.institution,d.start_date,p.full_name,c.legal_name,c.company_rut,c.type,c.quantity,c.value_clp,c.is_controlling
FROM person p JOIN declaration d USING(person_id) JOIN company c USING(declaration_id)
WHERE p.full_name='DIEGO ANTONIO SAN MARTÍN LÓPEZ' AND c.company_rut='76349892'
ORDER BY d.declaration_date;
