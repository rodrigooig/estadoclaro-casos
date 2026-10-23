-- Compras por RUT de la EIRL declarada por la autoridad; deduplicado por código de OC.
-- Incluye UF al día de envío; corte meta.build_date: 2026-10-21T19:32:15+00:00.
SELECT order_code, min(sent_date) AS sent_date, any_value(status) AS status,
       any_value(route) AS route, any_value(buyer_name) AS buyer_name,
       any_value(legal_name) AS legal_name, any_value(supplier_rut) AS supplier_rut,
       any_value(amount_clp) AS amount_clp,
       any_value(amount_clp / uf.value) AS amount_uf_at_sent_date,
       any_value(uf.value) AS uf_clp_per_uf, any_value(url) AS url
FROM declared_supply_order
JOIN uf_series uf ON uf.date = sent_date
WHERE person_id = '23a99e59194938b437dccf2bd3607f33'
  AND order_code IN ('769-1920-SE17','2215-2107-SE18','2215-2109-SE18','2215-2111-SE18')
GROUP BY order_code
ORDER BY sent_date, order_code;
