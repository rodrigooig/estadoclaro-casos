-- Inspect every distinct primary PO for the controlled supplier and map legitimate context.
-- Gold cutoff: 2026-10-06T15:56:08+00:00.
SELECT order_code, sent_date, status, route, is_direct_award, is_agile,
       tender_code, supplier_rut, legal_name, buyer_name, amount_clp,
       main_rubro, url, timing, same_institution
FROM declared_supply_order
WHERE person_id = '37a73f1618573fd6758132c35df90f1e'
  AND legal_name ILIKE '%PULLMAN EDGAR MAMANI%'
  AND is_primary_for_person
ORDER BY sent_date;
