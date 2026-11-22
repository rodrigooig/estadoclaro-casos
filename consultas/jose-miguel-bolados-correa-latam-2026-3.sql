-- Órdenes únicas al mismo organismo durante vigencia declarada; UF nominal de fecha.
SELECT po.order_code,po.sent_date,po.status,po.route,po.is_direct_award,po.is_agile,
       po.tender_code,po.buyer_name,po.amount_clp,uf.value AS uf_fecha,
       ROUND(po.amount_clp/uf.value,2) AS amount_uf,po.url
FROM purchase_order po JOIN uf_series uf ON uf.date=po.sent_date
WHERE po.supplier_rut='89862200' AND po.buyer_name='ILUSTRE MUNICIPALIDAD DE MELIPILLA'
  AND po.sent_date BETWEEN DATE '2024-12-07' AND DATE '2026-03-31'
ORDER BY po.sent_date;
