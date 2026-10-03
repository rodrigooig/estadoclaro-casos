-- Lead: enrique-lee-salud-actividad
-- Artifact cutoff: 2026-10-02T15:43:07+00:00; read-only run 2026-10-03.
-- Independent exact-identifier check against canonical public purchase orders.
SELECT order_code, sent_date, supplier_rut, supplier_dv, supplier_name,
       buyer_name, amount_clp, route, status
FROM purchase_order
WHERE regexp_replace(supplier_rut, '[^0-9]', '', 'g') = '768752400'
ORDER BY sent_date DESC;
