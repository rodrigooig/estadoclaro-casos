-- Pista: Esmirna de la Cruz Vidal Moraga; compra judicial a su RUT personal.
-- Corte: gold.duckdb meta.build_date 2026-11-24T20:08:20+00:00.
-- Deduplicar por código: declared_supply_order puede representar una OC bajo más de un timing.
SELECT order_code, url, sent_date, status, route, buyer_name, supplier_rut,
       amount_clp, amount_uf, main_rubro, same_institution, timing
FROM declared_supply_order
WHERE person_id = (
    SELECT person_id FROM person
    WHERE full_name = 'ESMIRNA DE LA CRUZ VIDAL MORAGA'
)
  AND supplier_rut = '6793816'
QUALIFY row_number() OVER (PARTITION BY order_code ORDER BY sent_date) = 1
ORDER BY sent_date, order_code;

-- Contraste de la participación societaria declarada en la última declaración disponible.
SELECT d.declaration_date, d.position, d.institution, d.source_id,
       c.legal_name, c.company_rut, c.type, c.is_controlling, c.value_clp, c.currency
FROM declaration d
JOIN company c USING (declaration_id)
WHERE d.person_id = (
    SELECT person_id FROM person
    WHERE full_name = 'ESMIRNA DE LA CRUZ VIDAL MORAGA'
)
  AND d.declaration_date = DATE '2026-03-28'
ORDER BY c.legal_name;
