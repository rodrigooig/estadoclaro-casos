-- Órdenes de Sea Salud. Ajuste respaldado por la primaria: 1155-3213-SE18
-- publica 150 UTM × CLP 48.160 = CLP 7.224.000; el oro tenía CLP 7.202.400.
WITH oc AS (
  SELECT order_code, MIN(sent_date) AS sent_date, MIN(status) AS status,
    MIN(route) AS route, MIN(buyer_name) AS buyer_name,
    CASE WHEN order_code = '1155-3213-SE18' THEN 7224000 ELSE MIN(amount_clp) END AS amount_clp,
    MIN(timing) AS timing, MIN(url) AS url, MIN(main_rubro) AS main_rubro
  FROM declared_supply_order
  WHERE person_id = (SELECT person_id FROM person WHERE full_name = 'JORGE ANDRES FREI TOLEDO')
    AND supplier_rut = '76120802'
  GROUP BY order_code
)
SELECT oc.*, ROUND(oc.amount_clp / u.value, 2) AS amount_uf
FROM oc JOIN uf_series u ON u.date = oc.sent_date
ORDER BY oc.sent_date;