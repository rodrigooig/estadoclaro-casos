-- Compras de Sea Salud Ltda. atribuibles a Jorge Andrés Frei Toledo en sus declaraciones acreditantes;
-- se excluyen duplicidades de versionado agrupando cada código OC y se detallan causal, estado y gasto.
SELECT
  order_code,
  MIN(sent_date) AS sent_date,
  MIN(status) AS status,
  MIN(route) AS route,
  MIN(buyer_name) AS buyer_name,
  MIN(amount_clp) AS amount_clp,
  MIN(amount_uf) AS amount_uf,
  MIN(timing) AS timing,
  MIN(url) AS url,
  MIN(main_rubro) AS main_rubro
FROM declared_supply_order
WHERE person_id = (
  SELECT person_id FROM person
  WHERE full_name = 'JORGE ANDRES FREI TOLEDO'
)
  AND supplier_rut = '76120802'
GROUP BY order_code
ORDER BY sent_date;
