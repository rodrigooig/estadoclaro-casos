-- Independent adversarial rerun: deduplicate primary OC records before aggregation.
-- Artifact cutoff: 2026-10-06T15:56:08Z. Execute only with ec-gold-sql.
WITH eligible_holding AS (
  SELECT p.person_id, p.declaration_id, p.declaration_date,
         c.company_rut, c.acquisition_date
  FROM panel AS p
  JOIN declarant AS d USING (person_id)
  JOIN company AS c USING (declaration_id)
  WHERE d.full_name = 'RAFAEL MAURICIO PLAZA REVECO'
    AND p.declaration_date = DATE '2026-09-24'
    AND c.company_rut = '93659000'
), one_row_per_code AS (
  SELECT po.order_code,
         MIN(po.sent_date) AS sent_date,
         MAX(po.amount_clp) AS amount_clp,
         MAX(po.amount_uf) AS amount_uf,
         MAX(po.supplier_rut) AS supplier_rut,
         MAX(po.status) AS status
  FROM eligible_holding AS h
  JOIN purchase_order AS po
    ON po.supplier_rut = h.company_rut
   AND po.sent_date >= h.acquisition_date
   AND po.sent_date <= h.declaration_date
  GROUP BY po.order_code
)
SELECT COUNT(*) AS unique_order_codes,
       SUM(amount_clp) AS sum_order_clp,
       ROUND(SUM(amount_uf), 2) AS sum_order_uf,
       MIN(sent_date) AS first_order_date,
       MAX(sent_date) AS last_order_date,
       STRING_AGG(order_code, ', ' ORDER BY sent_date, order_code) AS order_codes
FROM one_row_per_code;