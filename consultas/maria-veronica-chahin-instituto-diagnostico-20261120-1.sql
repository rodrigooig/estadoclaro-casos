SELECT d.declaration_date, d.position, d.institution, d.source_id, c.legal_name, c.company_rut, c.type, c.quantity, c.value_clp, c.currency
FROM declaration d JOIN company c USING (declaration_id)
WHERE d.source_id = 28985;

SELECT order_code, sent_date, status, route, buyer_name, amount_clp, amount_uf, timing, same_institution
FROM declared_supply_order
WHERE supplier_rut = '92051000'
  AND person_id = '9331b71d97e5248bea4eccbfcfe6e251'
ORDER BY sent_date;
