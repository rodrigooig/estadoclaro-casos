-- EstadoClaro gold: post-vigencia y órdenes posteriores al primer reportaje.
-- Corte del artefacto: 2026-10-27T15:25:49+00:00
-- Mide órdenes por RUT societario; los totales no determinan fecha de contrato,
-- pago, aplicación de la ley ni intervención personal.
SELECT COUNT(*) AS n_ordenes,
       SUM(amount_clp) AS total_clp,
       SUM(amount_uf) AS total_uf,
       COUNT(DISTINCT buyer_name) AS compradores,
       MIN(sent_date) AS primera_fecha,
       MAX(sent_date) AS ultima_fecha
FROM purchase_order
WHERE supplier_rut = '79840520'
  AND sent_date BETWEEN DATE '2025-11-28' AND DATE '2026-10-22';

-- Comparación de la ventana publicada (hasta 15-10-2026) y nuevas órdenes
-- incorporadas en el artefacto hasta 22-10-2026.
SELECT CASE WHEN sent_date <= DATE '2026-10-15' THEN 'hasta_2026-10-15'
            ELSE '2026-10-16_a_2026-10-22' END AS ventana,
       COUNT(*) AS n_ordenes,
       SUM(amount_clp) AS total_clp,
       SUM(amount_uf) AS total_uf,
       COUNT(DISTINCT buyer_name) AS compradores
FROM purchase_order
WHERE supplier_rut = '79840520'
  AND sent_date BETWEEN DATE '2025-11-28' AND DATE '2026-10-22'
GROUP BY 1
ORDER BY 1;

-- Órdenes representativas verificadas contra sus fichas públicas.
SELECT order_code, sent_date, status, route, tender_code, buyer_name,
       supplier_name, supplier_dv, amount_clp, amount_uf, currency, url
FROM purchase_order
WHERE supplier_rut = '79840520'
  AND order_code IN ('1351-55-SE26','2271-237-SE25','4283-33-SE26','4283-195-AG26')
ORDER BY sent_date;
