-- Asegura el estado del nexo con Mercado Público para el RUT declarado.
SELECT COUNT(*) AS n_purchase_orders,
       SUM(amount_clp) AS amount_clp,
       MIN(sent_date) AS first_order,
       MAX(sent_date) AS last_order
FROM purchase_order
WHERE supplier_rut = '76028531';
