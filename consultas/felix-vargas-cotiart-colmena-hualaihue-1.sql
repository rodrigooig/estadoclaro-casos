-- Medido contra data/gold.duckdb; corte 2026-10-02T15:43:07Z.
-- Identidad exacta por nombre completo; sociedad por RUT cuerpo; snapshot relation deduplicated
-- by order_code before any count/sum to avoid declaration-snapshot duplication.
WITH person_match AS (
  SELECT person_id
  FROM person
  WHERE full_name = 'FELIX EDUARDO VARGAS COTIART'
), orders AS (
  SELECT DISTINCT
    dso.order_code,
    dso.sent_date,
    dso.amount_clp,
    dso.status,
    dso.tender_code,
    dso.is_agile
  FROM declared_supply_order AS dso
  JOIN person_match USING (person_id)
  WHERE dso.supplier_rut = '77539857'
    AND dso.is_primary_for_person
    AND dso.timing = 'during'
)
SELECT strftime(sent_date, '%Y') AS purchase_year,
       COUNT(*) AS distinct_order_codes,
       SUM(amount_clp) AS sum_artifact_amount_clp,
       COUNT(*) FILTER (WHERE status NOT ILIKE '%enviad%') AS status_not_pending,
       COUNT(*) FILTER (WHERE status ILIKE '%enviad%') AS status_pending,
       COUNT(*) FILTER (WHERE tender_code = '2902-17-LE24') AS linked_to_tender,
       COUNT(*) FILTER (WHERE is_agile) AS agile
FROM orders
GROUP BY 1
ORDER BY 1;

-- Transaction cut using the official term-start date (2025-01-06).
WITH person_match AS (
  SELECT person_id
  FROM person
  WHERE full_name = 'FELIX EDUARDO VARGAS COTIART'
), orders AS (
  SELECT DISTINCT dso.order_code, dso.sent_date, dso.amount_clp, dso.status,
                  dso.tender_code, dso.is_agile
  FROM declared_supply_order AS dso
  JOIN person_match USING (person_id)
  WHERE dso.supplier_rut = '77539857'
    AND dso.is_primary_for_person
    AND dso.timing = 'during'
)
SELECT CASE WHEN sent_date < DATE '2025-01-06' THEN 'before_term_start'
            ELSE 'on_or_after_term_start' END AS term_period,
       COUNT(*) AS distinct_order_codes,
       SUM(amount_clp) AS sum_artifact_amount_clp,
       COUNT(*) FILTER (WHERE status ILIKE '%enviad%') AS status_pending,
       COUNT(*) FILTER (WHERE tender_code = '2902-17-LE24') AS linked_to_tender,
       COUNT(*) FILTER (WHERE is_agile) AS agile
FROM orders
GROUP BY 1
ORDER BY 1;

-- The relation intentionally begins at each declaration date. Verify the company's
-- snapshots and dates (source RUT is a corporate identifier, never a personal one).
SELECT d.declaration_date, d.start_date, d.institution, d.position,
       c.legal_name, c.company_rut, c.quantity, c.is_controlling,
       c.acquisition_date, c.value_clp
FROM declaration AS d
JOIN company AS c USING (declaration_id)
JOIN person AS p USING (person_id)
WHERE p.full_name = 'FELIX EDUARDO VARGAS COTIART'
  AND c.company_rut = '77539857'
ORDER BY d.declaration_date;

-- This public accepted transaction predates the first company declaration; it exists in
-- purchase_order but is therefore absent from declared_supply_order's declaration window.
SELECT order_code, sent_date, status, exclusion_reason, supplier_rut
FROM purchase_order
WHERE order_code IN ('2902-65-SE24','2902-99-SE24','2902-407-SE24');

-- It should not be in the declared-supply join because the link's temporal window starts
-- at the first company declaration on 2024-07-23.
SELECT order_code, person_id, supplier_rut, sent_date, amount_clp, timing,
       is_primary_for_person, declaration_id
FROM declared_supply_order
WHERE order_code = '2902-65-SE24';
