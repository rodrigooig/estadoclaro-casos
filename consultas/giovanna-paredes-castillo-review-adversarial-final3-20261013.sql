-- Independent adversarial audit of four exact InfoProbidad declaration IDs.
-- Gold cutoff: 2026-10-09T16:06:27Z. Read-only; run only with ec-gold-sql.
WITH target AS (
  SELECT de.source_id, de.declaration_id, de.declaration_date, de.declaration_type,
         d.full_name, p.institution, p.position, a.asset_id,
         a.declared_value, a.value_clp, a.currency, a.currency_reading,
         a.implausible, c.legal_name, c.company_rut, c.quantity, c.is_controlling
  FROM declaration de
  JOIN declarant d USING (person_id)
  JOIN panel p USING (declaration_id)
  LEFT JOIN asset a USING (declaration_id)
  LEFT JOIN company c USING (declaration_id, asset_id)
  WHERE de.source_id IN (1017370, 1017105, 1023480, 1217224)
), same_day AS (
  SELECT d.full_name, de.declaration_date,
         count(DISTINCT de.source_id) AS distinct_source_ids,
         string_agg(DISTINCT CAST(de.source_id AS VARCHAR), ', ' ORDER BY CAST(de.source_id AS VARCHAR)) AS source_ids
  FROM declaration de
  JOIN declarant d USING (person_id)
  WHERE d.full_name = 'GIOVANNA PAREDES CASTILLO'
    AND de.declaration_date = DATE '2023-03-29'
  GROUP BY d.full_name, de.declaration_date
)
SELECT t.source_id, t.declaration_date, t.declaration_type,
       t.full_name, t.institution, t.position,
       count(DISTINCT t.asset_id) AS distinct_asset_rows,
       count(DISTINCT t.asset_id) FILTER (WHERE t.company_rut = '76035861') AS target_company_rows,
       max(t.legal_name) FILTER (WHERE t.company_rut = '76035861') AS target_company_name,
       max(t.quantity) FILTER (WHERE t.company_rut = '76035861') AS target_quantity,
       max(t.is_controlling) FILTER (WHERE t.company_rut = '76035861') AS target_control_flag,
       max(t.declared_value) FILTER (WHERE t.company_rut = '76035861') AS target_declared_value,
       max(t.value_clp) FILTER (WHERE t.company_rut = '76035861') AS processed_clp_value,
       max(t.currency) FILTER (WHERE t.company_rut = '76035861') AS source_currency,
       max(t.currency_reading) FILTER (WHERE t.company_rut = '76035861') AS processed_currency_reading,
       max(t.implausible) FILTER (WHERE t.company_rut = '76035861') AS implausible_flag,
       s.distinct_source_ids AS same_day_filings_for_person,
       s.source_ids AS same_day_source_ids
FROM target t
LEFT JOIN same_day s ON s.full_name = t.full_name AND s.declaration_date = t.declaration_date
GROUP BY t.source_id, t.declaration_id, t.declaration_date, t.declaration_type,
         t.full_name, t.institution, t.position, s.distinct_source_ids, s.source_ids
ORDER BY t.source_id;
