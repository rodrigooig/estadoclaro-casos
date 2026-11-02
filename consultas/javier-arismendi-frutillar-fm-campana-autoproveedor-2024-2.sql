-- Cotejo a nivel de factura, con la llave primaria del proveedor (RUT + DV).
SELECT line_id, supplier_rut, dv_matches, supplier_name, document_date,
       amount_clp, amount_uf, document_type, document_number, account_label,
       is_rejected, reimbursement_type, reimbursement_requested
FROM campaign_expense
WHERE campaign_id = 'b92bef2a9b2f7fcf43b8c41b37ce40d9'
  AND supplier_rut = '77560167'
ORDER BY document_date, document_number;
