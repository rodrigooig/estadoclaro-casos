-- Broad screen: current councilor Edgar Mamani and declared transport suppliers.
-- Gold cutoff: 2026-10-06T15:56:08+00:00.
SELECT d.full_name, p.institution, p.position, p.declaration_date, p.source_uri,
       s.legal_name, s.supplier_name, s.supplier_rut, s.is_controlling,
       s.n_orders_during, s.n_buyers, s.n_direct_award, s.n_agile,
       s.n_same_institution, s.amount_clp_during, s.first_order_date,
       s.last_order_date, s.supplier_activity
FROM declared_supply s
JOIN panel p USING (person_id)
JOIN declarant d USING (person_id)
WHERE d.full_name ILIKE '%EDGAR MAMANI%'
ORDER BY s.n_orders_during DESC, s.amount_clp_during DESC;
