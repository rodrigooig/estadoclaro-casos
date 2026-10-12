-- Control independiente por fuente: conserva una fila por declaración y suma cada pasivo una vez.
WITH sources AS (
  SELECT source_id, declaration_id, declaration_date, declaration_type,
         institution, position, global_liability_amount_clp
  FROM declaration
  WHERE source_id IN ('1168779', '1172389')
), details AS (
  SELECT declaration_id, COUNT(*) AS n_lines,
         SUM(value_clp) AS sum_lines_clp,
         MIN(value_clp) AS min_line_clp,
         MAX(value_clp) AS max_line_clp,
         COUNT(DISTINCT creditor) AS n_creditors
  FROM liability
  GROUP BY declaration_id
)
SELECT s.source_id, p.full_name, s.declaration_date, s.declaration_type,
       s.institution, s.position, s.global_liability_amount_clp,
       COALESCE(x.n_lines, 0) AS n_lines,
       COALESCE(x.sum_lines_clp, 0) AS sum_lines_clp,
       x.min_line_clp, x.max_line_clp, COALESCE(x.n_creditors, 0) AS n_creditors
FROM sources s
JOIN declaration d USING (declaration_id)
JOIN person p USING (person_id)
LEFT JOIN details x USING (declaration_id)
ORDER BY s.source_id;
