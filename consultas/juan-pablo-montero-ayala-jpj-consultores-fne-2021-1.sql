-- Identidad, declaración acreditante y situación del cargo a la fecha de la OC.
SELECT d.declaration_id, d.source_id, d.declaration_date, d.start_date,
       d.end_date, d.institution, d.position,
       c.legal_name, c.company_rut, c.type, c.quantity,
       c.is_controlling, c.business_activity,
       o.status AS office_status, o.assumed_on, o.ended_on
FROM declaration d
JOIN company c USING (declaration_id)
LEFT JOIN office o ON o.person_id = d.person_id
WHERE d.person_id = '8cb80385281aad45b12f53d3a3991660'
  AND d.declaration_id = 'declaracion_d69c2613a8e6c7b3fa72dd62b626f5f4';
