-- EstadoClaro gold snapshot comparison for the two primary declaration IDs.
-- Cutoff: meta.build_date=2026-10-13T17:02:26+00:00.
SELECT d.declaration_id,d.source_id,pnl.source_uri,d.declaration_date,d.declaration_type,
       d.position,d.institution,dec.full_name,c.legal_name,c.company_rut,c.type,
       c.quantity,c.value_clp,c.currency,c.is_controlling
FROM declaration d
JOIN panel pnl ON d.declaration_id=pnl.declaration_id
JOIN declarant dec ON d.person_id=dec.person_id
JOIN company c ON d.declaration_id=c.declaration_id
WHERE d.declaration_id IN (
  'declaracion_f48d7107748a7322391d588544c2566c',
  'declaracion_fe299dec2b22528c1de6fad6aef7bf63'
)
ORDER BY c.company_rut,d.declaration_id;
