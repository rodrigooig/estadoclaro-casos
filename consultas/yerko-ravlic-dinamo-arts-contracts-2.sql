-- Corte: meta.build_date 2026-10-02T15:43:07+00:00
-- Contraste independiente del agregado declared_supply.
-- Filtro por proveedor con RUT societario exacto y ventana desde la fecha de asunción.
SELECT
    order_code,
    sent_date,
    supplier_rut,
    supplier_dv,
    supplier_name,
    buyer_code,
    buyer_name,
    buyer_key,
    status,
    route,
    contract_type,
    is_direct_award,
    is_agile,
    tender_code,
    amount_clp,
    currency,
    declared_amount,
    main_rubro,
    exclusion_reason
FROM purchase_order
WHERE supplier_rut = '76195295'
  AND sent_date >= DATE '2024-12-06'
ORDER BY sent_date, order_code;
