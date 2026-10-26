-- OCs del proveedor exacto y comprador normalizado en la ventana de cargo.
SELECT order_code, url, sent_date, status, route, is_direct_award, is_agile,
       tender_code, buyer_code, buyer_name, buyer_key, amount_clp, amount_uf,
       exclusion_reason
FROM purchase_order
WHERE supplier_rut = '96928510'
  AND buyer_key = 'PODER JUDICIAL'
  AND sent_date BETWEEN DATE '2025-03-27' AND DATE '2026-10-22'
ORDER BY sent_date DESC;