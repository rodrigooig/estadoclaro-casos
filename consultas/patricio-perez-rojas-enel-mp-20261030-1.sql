-- Pista: controlador/no controlador, compras públicas agregadas y detalle primario.
-- Ejecutar exclusivamente con ec-gold-sql; corte consultado desde meta.
WITH hit AS (
  SELECT person_id, supplier_rut, legal_name, supplier_name, n_declarants,
         is_controlling, participation_type, n_orders_during, n_buyers,
         n_same_institution, n_direct_award, amount_clp_during, amount_uf_during,
         first_order_date, last_order_date
  FROM declared_supply
  WHERE person_id = (SELECT person_id FROM person
                     WHERE full_name = 'PATRICIO HERNÁN PÉREZ ROJAS')
    AND supplier_rut = '96800570'
)
SELECT h.*, m.value AS gold_cutoff
FROM hit h CROSS JOIN meta m
WHERE m.key = 'build_date';

-- Verificación por órdenes únicas en el universo de compra; ventana que aparece
-- agregada en declared_supply (21-03-2017 a 23-10-2026).
SELECT COUNT(DISTINCT order_code) AS n_orders,
       ROUND(SUM(amount_clp)) AS amount_clp,
       ROUND(SUM(amount_uf), 2) AS amount_uf,
       COUNT(DISTINCT buyer_key) AS buyers,
       COUNT(DISTINCT order_code) FILTER (WHERE is_direct_award) AS direct_awards,
       MIN(sent_date) AS first_order,
       MAX(sent_date) AS last_order
FROM purchase_order
WHERE regexp_replace(replace(supplier_rut, '.', ''), '-[0-9kK]$', '') = '96800570'
  AND sent_date BETWEEN DATE '2017-03-21' AND DATE '2026-10-23';

-- Órdenes primarias ilustrativas citadas en la ficha.
SELECT order_code, url, sent_date, status, route, is_direct_award,
       buyer_name, supplier_rut, supplier_name, amount_clp, amount_uf
FROM purchase_order
WHERE order_code IN ('449-173-SE17', '2659-296-SE17')
ORDER BY sent_date;
