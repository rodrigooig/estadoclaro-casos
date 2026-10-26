-- Gold de solo lectura; corte 2026-10-23T14:20:50+00:00.
-- Seis gastos rechazados a la sociedad declarada (proveedor identificado por RUT).
SELECT ce.line_id, ce.document_date, ce.document_number, ce.supplier_rut,
       ce.supplier_name, ce.account_label, ce.amount_clp, ce.amount_uf,
       ce.is_rejected, c.audit_status, c.rejected_expense_clp,
       c.self_supply_rejected_clp, c.source_uri
FROM campaign_expense ce
JOIN campaign c USING (campaign_id)
WHERE c.campaign_id = '8007f86d694e8b2aeaa91e3324c58940'
  AND ce.supplier_rut = '76214007'
ORDER BY ce.document_date, ce.document_number;
