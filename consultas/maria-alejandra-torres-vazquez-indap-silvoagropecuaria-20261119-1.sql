-- Semilla y verificación reproducible. Corte gold: 2026-11-17T18:25:42+00:00
SELECT DISTINCT order_code, sent_date, status, route, is_direct_award,
       buyer_name, buyer_key, amount_clp, amount_uf, url, timing
FROM declared_supply_order
WHERE person_id = 'd815a6e3e7994d06fe8502f3a686812d'
  AND supplier_rut = '76405870'
ORDER BY sent_date;

-- Totales de órdenes únicas en ventana durante la cual el oro vincula
-- la participación declarada con el cargo; evita sumar snapshots duplicados.
SELECT count(DISTINCT order_code) AS n_orders,
       sum(amount_clp) AS amount_clp,
       sum(amount_uf) AS amount_uf,
       count(DISTINCT buyer_key) AS n_buyers,
       count(DISTINCT CASE WHEN is_direct_award THEN order_code END) AS n_direct_award,
       min(sent_date) AS first_date,
       max(sent_date) AS last_date
FROM declared_supply_order
WHERE person_id = 'd815a6e3e7994d06fe8502f3a686812d'
  AND supplier_rut = '76405870'
  AND timing = 'during';

-- Fuente primaria de la declaración (InfoProbidad ID 574463), enlazada al RUT exacto.
SELECT d.declaration_date, d.institution, d.position, d.source_id,
       c.legal_name, c.company_rut, c.type, c.quantity, c.is_controlling,
       c.value_clp, c.acquisition_date
FROM declaration d
JOIN company c USING (declaration_id)
WHERE d.person_id = 'd815a6e3e7994d06fe8502f3a686812d'
  AND c.company_rut = '76405870'
ORDER BY d.declaration_date;
