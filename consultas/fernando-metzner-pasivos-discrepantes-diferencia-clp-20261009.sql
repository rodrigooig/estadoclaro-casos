-- Calculate the nominal declared gap and ratio, keeping the source amounts as CLP.
-- Artifact cutoff: 2026-10-08T12:48:32Z. Read only via ec-gold-sql.
WITH vals AS (
  SELECT d.source_id, d.global_liability_amount_clp AS amount_clp
  FROM declaration d
  JOIN declarant x USING (person_id)
  WHERE x.full_name = 'FERNANDO ESTEBAN METZNER IRIBARREN'
    AND d.source_id IN (820453, 890731)
)
SELECT max(CASE WHEN source_id=820453 THEN amount_clp END) AS march_voluntary_clp,
       max(CASE WHEN source_id=890731 THEN amount_clp END) AS june_declaration_clp,
       max(CASE WHEN source_id=820453 THEN amount_clp END)
         - max(CASE WHEN source_id=890731 THEN amount_clp END) AS nominal_difference_clp,
       max(CASE WHEN source_id=820453 THEN amount_clp END)
         / max(CASE WHEN source_id=890731 THEN amount_clp END) AS ratio
FROM vals;
