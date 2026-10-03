WITH linked AS (
  SELECT DISTINCT
    order_code,
    sent_date,
    buyer_name,
    amount_clp,
    supplier_rut,
    route,
    is_direct_award,
    same_institution
  FROM declared_supply_order
  JOIN person USING (person_id)
  WHERE full_name = 'NORA ANGELA ROSATI JEREZ'
    AND is_primary_for_person
    AND timing = 'during'
    AND exclusion_reason IS NULL
), canonical AS (
  SELECT DISTINCT
    l.order_code,
    l.sent_date,
    l.buyer_name,
    l.amount_clp AS linked_amount_clp,
    p.amount_clp AS purchase_order_amount_clp,
    l.supplier_rut,
    p.supplier_rut AS canonical_supplier_rut,
    l.route,
    p.is_direct_award AS canonical_is_direct_award,
    p.currency,
    p.declared_amount,
    p.foreign_currency,
    l.same_institution
  FROM linked l
  JOIN purchase_order p USING (order_code)
)
SELECT *
FROM canonical
ORDER BY sent_date, order_code;
