-- Independent panel and row-count check, gold cutoff 2026-10-09T16:06:27+00:00.
SELECT d.full_name, dec.source_id, dec.declaration_date, dec.declaration_type,
       dec.global_liability_amount_clp, p.assets_clp, p.liabilities_clp,
       p.net_worth_clp, p.confidence, p.has_outlier,
       (SELECT count(*) FROM asset a WHERE a.declaration_id = dec.declaration_id) AS asset_rows,
       (SELECT count(*) FROM asset a WHERE a.declaration_id = dec.declaration_id
          AND a.asset_type = 'real_estate') AS real_estate_rows,
       (SELECT count(*) FROM liability l WHERE l.declaration_id = dec.declaration_id) AS liability_rows,
       (SELECT sum(l.value_clp) FROM liability l WHERE l.declaration_id = dec.declaration_id) AS liability_sum_clp
FROM declaration dec
JOIN declarant d USING (person_id)
JOIN panel p USING (declaration_id)
WHERE dec.source_id IN (5099580, 5099347)
  AND d.full_name = 'CAMILA SULING JORQUIERA MONARDEZ'
ORDER BY dec.source_id;
