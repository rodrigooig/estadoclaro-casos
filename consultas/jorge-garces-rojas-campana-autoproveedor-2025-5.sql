-- Gold de solo lectura; corte 2026-10-23T14:20:50+00:00.
-- Conteo y suma deduplicados por orden para el proveedor RUT 76.214.007-1.
SELECT count(*) AS n_purchase_orders, round(sum(amount_clp)) AS amount_clp,
       round(sum(amount_uf), 2) AS amount_uf,
       min(sent_date) AS first_sent, max(sent_date) AS last_sent
FROM purchase_order
WHERE supplier_rut = '76214007';
