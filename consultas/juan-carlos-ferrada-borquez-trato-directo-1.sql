-- Pista trato_directo: compras por proveedor declarado de Juan Carlos Ferrada Bórquez.
-- Ejecutar exclusivamente con ec-gold-sql (read_only). Corte consultado: 2026-10-21T19:32:15+00:00.
SELECT DISTINCT
  order_code, sent_date, buyer_name, buyer_key, amount_clp, amount_uf,
  status, route, timing, same_institution, url
FROM main.declared_supply_order
WHERE person_id = '8340e4905206a0379259ad5e7ee761ff'
  AND supplier_rut = '76308795'
  AND timing = 'during'
ORDER BY sent_date, order_code;
