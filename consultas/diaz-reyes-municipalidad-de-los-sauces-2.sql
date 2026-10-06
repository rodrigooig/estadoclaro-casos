WITH declared AS (
    SELECT
        d.person_id,
        d.declaration_date,
        c.company_rut
    FROM declaration AS d
    JOIN person AS p USING (person_id)
    JOIN company AS c USING (declaration_id)
    WHERE p.full_name = 'NANCY MARISOL DIAZ REYES'
), scoped AS (
    SELECT DISTINCT
        o.order_code,
        o.sent_date,
        o.status,
        o.amount_clp,
        o.declared_amount,
        o.tender_code,
        o.buyer_name,
        o.supplier_rut,
        o.supplier_dv,
        o.supplier_name,
        o.url
    FROM declared AS d
    JOIN purchase_order AS o
      ON o.supplier_rut = d.company_rut
     AND o.sent_date >= d.declaration_date
    WHERE o.buyer_key = 'MUNICIPALIDAD DE LOS SAUCES'
      AND o.tender_code = '3705-127-LE22'
)
SELECT
    count(DISTINCT order_code) AS unique_orders,
    count(DISTINCT CASE WHEN amount_clp > 1 THEN order_code END) AS order_amount_gt_1_clp,
    sum(CASE WHEN amount_clp > 1 THEN amount_clp ELSE 0 END) AS distinct_amount_sum_clp,
    min(sent_date) AS first_order_sent,
    max(sent_date) AS last_order_sent,
    string_agg(DISTINCT supplier_rut || '-' || supplier_dv, ', ') AS supplier_ids,
    string_agg(DISTINCT tender_code, ', ') AS tender_codes
FROM scoped;
