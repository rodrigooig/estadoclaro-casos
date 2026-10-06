-- Independent adversarial review; read-only gold snapshot verification.
-- Intended checks: exact-name identity, declaration chronology, one raw liability row
-- per declaration, original CLP fields, and arithmetic between 2023/2024 records.
WITH exact_person AS (
  SELECT person_id, full_name
  FROM declarant
  WHERE full_name = 'DARIO SANCHEZ MONTENEGRO'
), records AS (
  SELECT
    p.person_id,
    p.full_name,
    dec.declaration_id,
    dec.declaration_date,
    dec.declaration_type,
    dec.institution,
    dec.position,
    l.liability_id,
    l.type AS obligation_type,
    l.creditor,
    l.currency,
    l.value_clp,
    lu.value_uf,
    lu.implausible,
    pan.assets_clp AS panel_assets_clp,
    pan.liabilities_clp AS panel_liabilities_clp,
    pan.assets_uf AS panel_assets_uf,
    pan.liabilities_uf AS panel_liabilities_uf
  FROM exact_person p
  JOIN declaration dec USING (person_id)
  JOIN liability l USING (declaration_id)
  LEFT JOIN liability_uf lu USING (declaration_id, liability_id)
  LEFT JOIN panel pan USING (declaration_id)
)
SELECT
  (SELECT value FROM meta WHERE key = 'build_date' LIMIT 1) AS gold_build_date,
  (SELECT COUNT(DISTINCT person_id) FROM exact_person) AS exact_name_person_count,
  (SELECT COUNT(DISTINCT declaration_id) FROM records) AS declaration_count_with_liability,
  person_id,
  full_name,
  declaration_id,
  declaration_date,
  declaration_type,
  institution,
  position,
  liability_id,
  obligation_type,
  creditor,
  currency,
  value_clp,
  value_uf,
  implausible,
  panel_assets_clp,
  panel_liabilities_clp,
  panel_assets_uf,
  panel_liabilities_uf,
  (SELECT MAX(value_clp) FILTER (WHERE declaration_date = DATE '2024-03-18') FROM records)
    / NULLIF((SELECT MAX(value_clp) FILTER (WHERE declaration_date = DATE '2023-03-14') FROM records), 0)
    AS ratio_2024_to_2023,
  (SELECT MAX(value_clp) FILTER (WHERE declaration_date = DATE '2024-03-18') FROM records)
    - (SELECT MAX(value_clp) FILTER (WHERE declaration_date = DATE '2023-03-14') FROM records)
    AS nominal_clp_difference
FROM records
ORDER BY declaration_date, declaration_id, liability_id;
