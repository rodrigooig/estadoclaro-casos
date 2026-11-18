-- Factura Servel 2509, cuenta de candidatura y resultado global de auditoría
SELECT c.name, c.audit_status, c.expense_clp, c.expense_uf,
       c.rejected_expense_clp, c.rejected_expense_uf,
       c.reimbursement_requested_clp, c.reimbursement_requested_uf,
       c.fiscal_reimbursement_clp, c.fiscal_reimbursement_uf,
       e.line_id, e.supplier_rut, e.supplier_name, e.document_date,
       e.document_type, e.document_number, e.amount_clp, e.amount_uf,
       e.account_label, e.is_rejected, e.reimbursement_type,
       e.reimbursement_requested
FROM campaign c
JOIN campaign_expense e USING (campaign_id)
WHERE c.name = 'GUILLERMO MARTINEZ SOTO'
  AND e.document_number = '2509';

-- Historial de órdenes de compra al RUT del proveedor
SELECT order_code, sent_date, status, buyer_name, buyer_key, route,
       is_direct_award, amount_clp, amount_uf, url
FROM purchase_order
WHERE supplier_rut = '77016420'
ORDER BY sent_date, order_code;
