-- Órdenes únicas del tramo acreditado por la declaración 5078480.
-- El corte termina el 19-06-2024 (14 órdenes), según declared_supply.
SELECT order_code, sent_date, status, route, is_direct_award, is_agile,
       tender_code, buyer_name, amount_clp, amount_uf, main_rubro,
       same_institution, exclusion_reason
FROM declared_supply_order
WHERE supplier_rut = '76223043'
  AND sent_date BETWEEN DATE '2023-06-23' AND DATE '2024-06-19'
ORDER BY sent_date, order_code;
