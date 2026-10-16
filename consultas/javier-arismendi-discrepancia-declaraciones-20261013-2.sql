-- Independent aggregation: compare company records within each source declaration first,
-- then join aggregates by exact company identifier and declared type. This avoids fan-out
-- when a RUT occurs on more than one row. Gold cutoff: 2026-10-13T17:02:26+00:00.
WITH rows AS (
  SELECT d.person_id,d.declaration_id,d.source_id,d.declaration_date,d.declaration_type,
         dec.full_name,c.company_rut,c.type,c.quantity,c.value_clp,c.currency
  FROM declaration d
  JOIN declarant dec ON d.person_id=dec.person_id
  JOIN company c ON d.declaration_id=c.declaration_id
  WHERE d.declaration_id IN (
    'declaracion_f48d7107748a7322391d588544c2566c',
    'declaracion_fe299dec2b22528c1de6fad6aef7bf63'
  )
), grouped AS (
  SELECT person_id,declaration_id,source_id,declaration_date,declaration_type,full_name,
         company_rut,type,count(*) AS rows_n,
         list(quantity ORDER BY quantity,value_clp) AS quantities,
         list(value_clp ORDER BY quantity,value_clp) AS values_clp,
         list(currency ORDER BY quantity,value_clp) AS currencies
  FROM rows
  GROUP BY ALL
)
SELECT a.full_name,a.declaration_date,a.company_rut,a.type,
       a.declaration_id AS id_a,a.declaration_type AS form_a,a.quantities AS quantities_a,
       a.values_clp AS values_a,a.currencies AS currencies_a,
       b.declaration_id AS id_b,b.declaration_type AS form_b,b.quantities AS quantities_b,
       b.values_clp AS values_b,b.currencies AS currencies_b
FROM grouped a
JOIN grouped b ON a.person_id=b.person_id
              AND a.company_rut=b.company_rut
              AND a.type=b.type
              AND a.declaration_id<b.declaration_id
ORDER BY a.company_rut,a.type;
