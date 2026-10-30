-- OCs deduplicadas por order_code: declared_supply_order repite filas por declaración.
-- Perfil/corte consultado: meta.build_date = 2026-10-30T15:53:06+00:00.
SELECT DISTINCT order_code, sent_date, status, route, buyer_name,
       amount_clp, amount_uf, main_rubro, url, same_institution
FROM declared_supply_order
WHERE person_id = 'd874d21578a7133849651ee479450558'
ORDER BY sent_date, order_code;
