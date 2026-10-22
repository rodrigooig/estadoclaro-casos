-- Reproduce en el corte vigente la línea de gasto y la participación societaria declarada.
SELECT line_id, document_date, amount_clp, amount_uf, document_type,
       document_number, account_label, is_rejected, supplier_name, supplier_rut, dv_matches
FROM campaign_expense
WHERE line_id = 390195;

SELECT p.full_name, d.declaration_id, d.declaration_date, d.start_date,
       d.position, d.source_id, c.legal_name, c.company_rut, c.quantity,
       c.is_controlling, c.acquisition_date, c.value_clp, c.currency
FROM person p
JOIN declaration d USING (person_id)
JOIN company c USING (declaration_id)
WHERE p.full_name = 'EUGENIO TUMA ZEDAN'
  AND c.company_rut = '76445700'
ORDER BY d.declaration_date;

SELECT campaign_id, name, election_name, election_date, office, region,
       audit_status, expense_clp, rejected_expense_clp,
       self_supply_clp, self_supply_rejected_clp, self_supply_companies
FROM campaign
WHERE campaign_id = 'd97c45c1293e3468765764a320f94542';
