-- Pista encontrada en campaña 2025: aportes/gastos de campaña asociados a sociedad declarada.
SELECT c.campaign_id, c.name, c.election_year, c.office, c.region,
       c.audit_status, c.expense_clp, c.self_supply_clp, c.self_supply_uf,
       c.self_supply_rejected_clp, c.self_supply_companies,
       s.declaration_id, s.legal_name, s.amount_clp, s.amount_uf,
       s.is_controlling, s.is_rejected, s.reimbursement_type, s.description
FROM campaign c
JOIN campaign_self_supply s USING (campaign_id)
WHERE c.name = 'PIER KARLEZI HAZLEBY'
  AND c.election_year = 2025;

-- Búsqueda del RUT de la sociedad declarada en compras públicas, corte del oro.
SELECT count(*) AS n_orders, sum(amount_clp) AS amount_clp,
       min(sent_date) AS first_date, max(sent_date) AS last_date
FROM purchase_order
WHERE supplier_rut = '77741416';