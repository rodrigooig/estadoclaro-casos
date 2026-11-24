-- Filas primarias en el gold para las dos órdenes atribuidas a la cooperativa.
-- Corte esperado: meta.build_date 2026-11-24T20:08:20+00:00
SELECT order_code, url, sent_date, created_date, status, route,
       contract_type, is_direct_award, is_agile, tender_code,
       supplier_rut, supplier_dv, supplier_name, buyer_name,
       amount_clp, amount_uf, currency, main_rubro, n_items
FROM purchase_order
WHERE order_code IN ('2281-2417-AG23', '2282-113-SE23')
ORDER BY sent_date;
