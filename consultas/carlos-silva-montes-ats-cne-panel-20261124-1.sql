-- Semilla del caso: participación declarada en empresa del sector eléctrico con OCs de CNE; verificar procedimientos y nexo funcional en primarias.
WITH holdings AS (
  SELECT d.source_id AS infoprobidad_id, d.declaration_id, d.declaration_date,
         d.position, c.company_rut, c.legal_name, c.business_activity,
         c.quantity, c.value_clp, c.is_controlling
  FROM declaration d
  JOIN company c USING (declaration_id)
  JOIN person p USING (person_id)
  WHERE p.full_name = 'CARLOS SILVA MONTES'
    AND c.company_rut = '76051875'
    AND d.source_id IN ('404284', '473778')
), orders AS (
  SELECT DISTINCT order_code, sent_date, status, route, buyer_name,
         amount_clp, amount_uf, timing, url
  FROM declared_supply_order
  WHERE person_id = '256c05fa5db17d4e26e2d9eba1ff6163'
    AND supplier_rut = '76051875'
    AND order_code IN ('610-134-SE19', '610-58-SE20')
)
SELECT h.*, o.order_code, o.sent_date, o.status, o.route, o.buyer_name,
       o.amount_clp, o.amount_uf, o.timing, o.url
FROM holdings h
JOIN orders o ON o.sent_date >= h.declaration_date
QUALIFY row_number() OVER (PARTITION BY o.order_code ORDER BY h.declaration_date DESC) = 1
ORDER BY o.sent_date;
