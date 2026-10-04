-- Perfil de compras de BRAVOS SPA, desduplicado por código de OC y dentro de
-- la ventana que EstadoClaro atribuye a la persona; oro solo lectura, corte
-- 2026-10-02T15:43:07+00:00. Revisar la definición de timing en metodología.
WITH orders AS (
    SELECT DISTINCT order_code, sent_date, buyer_name, status, route, tender_code,
           amount_clp, is_agile, is_direct_award
    FROM declared_supply_order
    WHERE person_id = 'efa302c4236dadf4b31b0aae00fa2533'
      AND supplier_rut = '76958669'
      AND is_primary_for_person
      AND timing = 'during'
)
SELECT COUNT(*) AS n_orders,
       ROUND(SUM(amount_clp), 0) AS amount_clp_artifact,
       COUNT(DISTINCT buyer_name) AS n_buyers,
       COUNT(DISTINCT tender_code) AS n_tenders,
       MIN(sent_date) AS first_order,
       MAX(sent_date) AS last_order,
       COUNT(*) FILTER (WHERE is_agile) AS agile,
       COUNT(*) FILTER (WHERE is_direct_award) AS direct_award,
       COUNT(*) FILTER (WHERE tender_code IS NOT NULL) AS linked_tender
FROM orders;
