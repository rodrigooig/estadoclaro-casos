-- Deduplicación por order_code: el oro puede repetir una OC entre ventanas de declaraciones.
SELECT DISTINCT ON (order_code)
  order_code, url, sent_date, status, route, supplier_rut,
  legal_name, buyer_name, amount_clp, amount_uf, main_rubro, timing,
  same_institution, is_primary_for_person
FROM declared_supply_order
WHERE person_id = '3f492683e745048f685297db0e924ef7'
  AND supplier_rut = '77172539'
ORDER BY order_code, is_primary_for_person DESC;
