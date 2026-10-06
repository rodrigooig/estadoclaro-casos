-- Independent evidence review v4: exact source-linked declaration rows, no snapshot summing.
-- Read-only ec-gold-sql against the current gold artifact.
WITH target AS (
  SELECT person_id, full_name
  FROM declarant
  WHERE full_name = 'DARIO SANCHEZ MONTENEGRO'
), selected AS (
  SELECT dec.person_id, dec.declaration_id, dec.source_id,
         dec.declaration_date, dec.declaration_type, dec.institution, dec.position
  FROM declaration dec
  JOIN target t USING (person_id)
  WHERE dec.source_id IN (1144876, 969843, 926505, 846768)
), liabilities AS (
  SELECT s.person_id, s.declaration_id, s.source_id, s.declaration_date,
         s.declaration_type, s.institution, s.position,
         l.liability_id, l.type AS liability_class, l.creditor,
         l.currency, l.value_clp, lu.value_uf, lu.implausible
  FROM selected s
  LEFT JOIN liability l USING (declaration_id)
  LEFT JOIN liability_uf lu USING (declaration_id, liability_id)
)
SELECT (SELECT value FROM meta WHERE key = 'build_date') AS gold_build_date,
       person_id,
       (SELECT COUNT(DISTINCT person_id) FROM target) AS exact_name_person_ids,
       declaration_id, source_id, declaration_date, declaration_type,
       institution, position, liability_id, liability_class, creditor,
       currency, value_clp, value_uf, implausible,
       COUNT(DISTINCT source_id) OVER (PARTITION BY person_id) AS selected_source_declarations,
       COUNT(*) OVER (PARTITION BY declaration_id) AS liability_rows_in_declaration,
       COUNT(*) OVER (PARTITION BY declaration_id, liability_id) AS joined_rows_for_liability
FROM liabilities
ORDER BY declaration_date, source_id, liability_id;
