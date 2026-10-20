-- Pantalla: órdenes a la misma institución de proveedor societario declarado
-- Persona: Sandra Vanessa Gutiérrez Ardaya (person_id exacto)
-- Ejecutar exclusivamente con ec-gold-sql; corte meta.build_date: 2026-10-20T14:25:46+00:00
SELECT DISTINCT
       o.order_code,
       o.sent_date,
       o.status,
       o.route,
       o.is_direct_award,
       o.buyer_name,
       o.legal_name,
       o.supplier_rut,
       o.amount_clp,
       o.url
FROM declared_supply_order o
WHERE o.person_id = '23a99e59194938b437dccf2bd3607f33'
  AND o.same_institution IS TRUE
ORDER BY o.sent_date, o.order_code;

