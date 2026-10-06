-- EstadoClaro gold cutoff: 2026-10-02T15:43:07+00:00
-- Summarize the current declaration's assets by type, then by property acquisition date.
SELECT
    a.asset_type,
    COUNT(*) AS n,
    SUM(a.value_uf) AS sum_uf,
    COUNT(*) FILTER (WHERE a.implausible) AS implausible,
    COUNT(*) FILTER (WHERE a.no_amount) AS no_amount
FROM asset AS a
JOIN declarant AS d USING (person_id)
WHERE d.full_name = 'XIMENA INSUNZA CORVALÁN'
  AND a.declaration_id = 'declaracion_581c2fb206c07edb44f04aea9a29c374'
GROUP BY a.asset_type
ORDER BY n DESC;

SELECT
    r.comuna,
    r.property_type,
    r.acquisition_date,
    COUNT(*) AS n,
    SUM(a.value_uf) AS value_uf
FROM real_estate AS r
JOIN asset AS a USING (declaration_id, asset_id)
JOIN declarant AS d USING (person_id)
WHERE d.full_name = 'XIMENA INSUNZA CORVALÁN'
  AND r.declaration_id = 'declaracion_581c2fb206c07edb44f04aea9a29c374'
GROUP BY ALL
ORDER BY r.acquisition_date;

SELECT
    a.asset_type,
    a.value_uf,
    a.declared_value,
    a.currency,
    a.currency_reading,
    COALESCE(r.acquisition_date, f.acquisition_date, c.acquisition_date) AS acquisition_date,
    r.comuna,
    r.property_type,
    f.type AS financial_type,
    c.legal_name
FROM asset AS a
LEFT JOIN real_estate AS r USING (declaration_id, asset_id)
LEFT JOIN financial_asset AS f USING (declaration_id, asset_id)
LEFT JOIN company AS c USING (declaration_id, asset_id)
JOIN declarant AS d USING (person_id)
WHERE d.full_name = 'XIMENA INSUNZA CORVALÁN'
  AND a.declaration_id = 'declaracion_581c2fb206c07edb44f04aea9a29c374'
ORDER BY a.asset_type, acquisition_date;
