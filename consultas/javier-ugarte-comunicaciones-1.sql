-- Search the exact declared legal name in canonical procurement suppliers.
-- Scope: gold artifact cutoff 2026-10-02; order records currently in the artifact.
SELECT order_code, sent_date, buyer_name, supplier_name, amount_clp, currency,
       route, is_direct_award, tender_code
FROM purchase_order
WHERE upper(supplier_name) =
  'JAVIER HERNAN UGARTE MANSILLA COMUNICACIONES CAUCAHUE EIRL'
ORDER BY sent_date, order_code;
