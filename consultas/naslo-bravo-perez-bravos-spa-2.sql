-- Revisión independiente por comprador: una fila canónica por order_code,
-- mismo oro/corte que la consulta 1. Solo lectura con ec-gold-sql.
WITH orders AS (
    SELECT DISTINCT order_code, buyer_name, sent_date, amount_clp,
           is_agile, is_direct_award
    FROM declared_supply_order
    WHERE person_id = 'efa302c4236dadf4b31b0aae00fa2533'
      AND supplier_rut = '76958669'
      AND is_primary_for_person
      AND timing = 'during'
)
SELECT buyer_name,
       COUNT(*) AS n_orders,
       ROUND(SUM(amount_clp), 0) AS amount_clp_artifact,
       MIN(sent_date) AS first_order,
       MAX(sent_date) AS last_order,
       COUNT(*) FILTER (WHERE is_agile) AS agile,
       COUNT(*) FILTER (WHERE is_direct_award) AS direct_award
FROM orders
GROUP BY buyer_name
ORDER BY n_orders DESC, amount_clp_artifact DESC;
