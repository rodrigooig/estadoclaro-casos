-- Test explicit buyer-name variants for MOP / public works / road directorate.
SELECT
    order_code,
    sent_date,
    buyer_name,
    amount_clp,
    tender_code,
    status,
    url
FROM purchase_order
WHERE supplier_rut = '76500119'
  AND (
      buyer_name ILIKE '%obras publicas%'
      OR buyer_name ILIKE '%mop%'
      OR buyer_name ILIKE '%dirección de vialidad%'
      OR buyer_name ILIKE '%vialidad%'
  )
ORDER BY sent_date, order_code;
