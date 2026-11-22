-- Reapertura primaria del interés y confirmación de identidad por InfoProbidad ID 1585825.
SELECT p.full_name,dec.source_id,dec.declaration_date,dec.position,dec.institution,
       co.legal_name,co.company_rut,co.type,co.quantity,co.is_controlling,co.value_clp,co.acquisition_date
FROM company co JOIN declaration dec ON dec.declaration_id=co.declaration_id
JOIN declarant p ON p.person_id=dec.person_id
WHERE p.full_name='JOSE MIGUEL BOLADOS CORREA'
  AND dec.source_id IN (1303676,1340466,1465355,1585825,1754733)
ORDER BY dec.declaration_date DESC,co.legal_name;
