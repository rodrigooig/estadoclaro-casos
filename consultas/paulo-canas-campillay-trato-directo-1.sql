-- Corte requerido en la ficha: 2026-10-23T14:20:50+00:00
-- Medición de órdenes acreditadas en la declaración: unique order_code evita
-- duplicar órdenes cuando dos fotos declarativas se solapan.
SELECT
    COUNT(DISTINCT order_code) FILTER (WHERE timing = 'during') AS during_orders,
    SUM(amount_clp) FILTER (WHERE timing = 'during') AS amount_clp,
    SUM(amount_uf) FILTER (WHERE timing = 'during') AS amount_uf_row_sum,
    COUNT(DISTINCT order_code) FILTER (WHERE is_direct_award AND timing = 'during') AS direct_award_orders,
    COUNT(DISTINCT buyer_name) FILTER (WHERE timing = 'during') AS buyers,
    MIN(sent_date) FILTER (WHERE timing = 'during') AS first_order,
    MAX(sent_date) FILTER (WHERE timing = 'during') AS last_order,
    STRING_AGG(DISTINCT route, ' | ') FILTER (WHERE timing = 'during') AS direct_award_route,
    STRING_AGG(DISTINCT status, ' | ') FILTER (WHERE timing = 'during') AS statuses,
    STRING_AGG(DISTINCT buyer_name, ' | ') FILTER (WHERE timing = 'during') AS buyer_names
FROM declared_supply_order
WHERE supplier_rut = '76104220'
  AND person_id = '3ce8c7755aa715ce30cd26c0236a2e40';
