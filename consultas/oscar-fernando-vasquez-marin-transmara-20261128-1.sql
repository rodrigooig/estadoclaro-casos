-- Universo: órdenes únicas del proveedor societario dentro de ventanas declaradas
-- para Oscar Fernando Vásquez Marín. No sumar filas duplicadas por ventanas/versiones.
WITH orders AS (
    SELECT DISTINCT
        o.order_code,
        o.sent_date,
        o.status,
        o.buyer_name,
        o.amount_clp,
        o.amount_uf,
        o.same_institution,
        o.url
    FROM declared_supply_order o
    JOIN person p USING (person_id)
    WHERE p.full_name = 'OSCAR FERNANDO VASQUEZ MARIN'
      AND o.supplier_rut = '78654420'
      AND o.timing = 'during'
)
SELECT
    COUNT(*) AS n_unique_orders,
    SUM(amount_clp) AS amount_clp,
    SUM(amount_uf) AS amount_uf,
    COUNT(*) FILTER (WHERE same_institution IS TRUE) AS same_institution_true,
    COUNT(*) FILTER (WHERE same_institution IS FALSE) AS same_institution_false,
    COUNT(*) FILTER (WHERE same_institution IS NULL) AS same_institution_undetermined,
    MIN(sent_date) AS first_order_date,
    MAX(sent_date) AS last_order_date
FROM orders;
