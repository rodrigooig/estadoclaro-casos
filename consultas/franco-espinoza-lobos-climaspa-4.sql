-- Search the canonical procurement table for purchases by the declarant's own institution.
-- Buyer-name variants are explicit; a zero result is limited to these fields and terms.
SELECT
    order_code,
    buyer_code,
    buyer_name,
    sent_date,
    amount_clp,
    tender_code,
    status,
    url
FROM purchase_order
WHERE supplier_rut = '76183919'
  AND (
    buyer_name ILIKE '%juzgado%'
    OR buyer_name ILIKE '%corte%'
    OR buyer_name ILIKE '%poder judicial%'
    OR buyer_name ILIKE '%corporacion administrativa%'
  )
ORDER BY sent_date;
