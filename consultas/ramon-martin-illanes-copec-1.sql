-- Cutoff: meta.build_date = 2026-10-02T15:43:07Z. Execute only with ec-gold-sql.
-- Snapshot facts: exact full name, company RUT, declaration dates, and stated control.
SELECT p.full_name, d.declaration_date, d.start_date, d.institution, d.position,
       d.source_id, c.legal_name, c.company_rut, c.quantity, c.is_controlling,
       c.acquisition_date, c.value_clp
FROM person AS p
JOIN declaration AS d USING (person_id)
JOIN company AS c USING (declaration_id)
WHERE p.full_name = 'RAMON ALFREDO MARTIN ILLANES'
  AND c.company_rut = '99520000'
ORDER BY d.declaration_date;

-- Independent transaction-level check: this exact person/company filter returns zero rows.
-- Do not infer personal involvement or sum supplier-wide orders from declared_supply aggregates.
SELECT p.full_name, dso.order_code, dso.sent_date, dso.amount_clp, dso.status,
       dso.tender_code, dso.timing, dso.same_institution
FROM person AS p
JOIN declared_supply_order AS dso USING (person_id)
WHERE p.full_name = 'RAMON ALFREDO MARTIN ILLANES'
  AND dso.supplier_rut = '99520000'
  AND dso.is_primary_for_person
ORDER BY dso.sent_date DESC;
