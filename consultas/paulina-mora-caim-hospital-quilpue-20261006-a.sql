-- Execution against read-only gold.duckdb; cutoff 2026-10-06T15:56:08+00:00.
-- Exact full-name match; person RUT is not selected or stored.
SELECT d.full_name, x.declaration_id, x.declaration_date, x.position, x.institution,
       c.legal_name, c.company_rut, c.quantity, c.is_controlling,
       c.acquisition_date, c.value_clp, c.business_activity
FROM declaration x
JOIN declarant d ON d.person_id = x.person_id
JOIN company c ON c.declaration_id = x.declaration_id
WHERE d.full_name = 'PAULINA ALEJANDRA MORA LARA'
ORDER BY x.declaration_date DESC;