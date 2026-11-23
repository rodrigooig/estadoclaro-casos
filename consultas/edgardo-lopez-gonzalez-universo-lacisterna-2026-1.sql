-- Cruce nominal exacto: declaración del juez, sociedad y rol art. 4 según el oro.
SELECT d.declaration_date, d.source_id, d.position, d.institution,
       c.legal_name, c.company_rut, c.type, c.quantity, c.value_clp,
       c.is_controlling, c.acquisition_date,
       ds.article_4_stake, ds.participation_type, ds.name_similarity
FROM declaration d
JOIN person p USING (person_id)
JOIN company c USING (declaration_id)
LEFT JOIN declared_supply ds
  ON ds.person_id = d.person_id
 AND ds.supplier_rut = regexp_replace(c.company_rut, '[^0-9]', '', 'g')
WHERE p.full_name = 'EDGARDO ANDRES LOPEZ GONZALEZ'
  AND c.legal_name = 'CENTRO DE CAPACITACION UNIVERSO LIMITADA'
ORDER BY d.declaration_date DESC;
