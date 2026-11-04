-- Pista: sociedades controladas declaradas que cruzan órdenes únicas Mercado Público
-- Carlos Roberto Toloza Soto; el RUT exacto confirma proveedor/sociedad.
WITH person_target AS (
  SELECT person_id FROM person WHERE full_name ILIKE '%CARLOS%TOLOZA%SOTO%' LIMIT 1
), unique_orders AS (
  SELECT order_code,
         min(sent_date) AS sent_date,
         any_value(status) AS status,
         any_value(buyer_name) AS buyer_name,
         any_value(amount_clp) AS amount_clp,
         any_value(amount_uf) AS amount_uf,
         any_value(route) AS route,
         any_value(is_direct_award) AS is_direct_award,
         any_value(tender_code) AS tender_code
  FROM declared_supply_order
  WHERE person_id = (SELECT person_id FROM person_target)
    AND supplier_rut = '76784840'
  GROUP BY order_code
)
SELECT * FROM unique_orders ORDER BY sent_date;

-- Agregado por órdenes únicas (evita duplicar la misma OC en varias declaraciones).
WITH person_target AS (
  SELECT person_id FROM person WHERE full_name ILIKE '%CARLOS%TOLOZA%SOTO%' LIMIT 1
), unique_orders AS (
  SELECT order_code, any_value(amount_clp) AS amount_clp,
         any_value(amount_uf) AS amount_uf,
         any_value(buyer_name) AS buyer_name
  FROM declared_supply_order
  WHERE person_id = (SELECT person_id FROM person_target)
    AND supplier_rut = '76784840'
  GROUP BY order_code
)
SELECT count(*) AS n_orders, sum(amount_clp) AS total_clp,
       round(sum(amount_uf), 2) AS total_uf,
       count(DISTINCT buyer_name) AS buyers
FROM unique_orders;

-- Cruce de campaña Servel: gasto candidato a mismo RUT/proveedor, si lo hay.
SELECT ca.name, ca.office, ca.election_year, ca.audit_status,
       ce.supplier_name, ce.supplier_rut, ce.amount_clp, ce.amount_uf,
       ce.account_label, ce.is_rejected, ce.reimbursement_requested
FROM campaign ca
JOIN campaign_expense ce USING (campaign_id)
WHERE ca.name ILIKE '%TOLOZA%'
  AND regexp_replace(ce.supplier_rut, '[^0-9]', '', 'g') LIKE '%76784840%';
