-- Fuente: gold.duckdb de solo lectura; corte 2026-11-20T17:45:38+00:00.
-- Cinco gastos de campaña por proveedor, conversión UF ya incorporada en la fuente;
-- la suma representa solicitudes de reembolso, no pagos acreditados.
SELECT c.name, c.office, c.election_year, c.audit_status,
       ce.supplier_rut, ce.supplier_name, ce.document_date,
       ce.amount_clp, ce.amount_uf, ce.is_rejected,
       ce.reimbursement_type, ce.reimbursement_requested,
       ce.account_label
FROM campaign c
JOIN campaign_expense ce ON ce.campaign_id = c.campaign_id
WHERE c.name = 'MAGLIO HONORIO CICARDINI NEYRA'
  AND ce.supplier_rut IN ('76427324', '78320420')
ORDER BY ce.supplier_rut, ce.document_date;

-- Verificación de conteo, monto, solicitudes y rechazos por campaña.
SELECT SUM(ce.amount_clp) AS total_clp,
       ROUND(SUM(ce.amount_uf), 2) AS total_uf,
       COUNT(*) AS n_lines,
       COUNT(*) FILTER (WHERE ce.reimbursement_requested) AS requested_lines,
       SUM(ce.amount_clp) FILTER (WHERE ce.reimbursement_requested) AS requested_clp,
       COUNT(*) FILTER (WHERE ce.is_rejected) AS rejected_lines
FROM campaign c
JOIN campaign_expense ce ON ce.campaign_id = c.campaign_id
WHERE c.name = 'MAGLIO HONORIO CICARDINI NEYRA'
  AND ce.supplier_rut IN ('76427324', '78320420');
