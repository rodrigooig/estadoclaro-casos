-- Pista: participación declarada de Francisco Javier Sanz Abad en ABS SpA y gasto SERVEL.
SELECT
  d.full_name, dec.source_id, dec.declaration_date, dec.position,
  c.company_rut, c.legal_name, c.type, c.quantity, c.value_clp, c.is_controlling,
  camp.election_name, camp.election_year, camp.office, camp.territory,
  camp.audit_status, camp.outcome,
  ce.document_date, ce.document_type, ce.document_number, ce.amount_clp,
  ce.amount_uf, ce.account_label, ce.is_rejected, ce.reimbursement_type,
  ce.reimbursement_requested,
  po.order_code, po.sent_date AS mp_date, po.buyer_name, po.amount_clp AS mp_amount_clp,
  po.amount_uf AS mp_amount_uf, po.same_institution, po.timing
FROM declaration dec
JOIN declarant d USING (person_id)
JOIN company c USING (declaration_id)
JOIN campaign_self_supply css ON css.person_id=dec.person_id
  AND css.declaration_id=dec.declaration_id AND css.asset_id=c.asset_id
JOIN campaign camp USING (campaign_id)
JOIN campaign_expense ce USING (line_id,campaign_id)
LEFT JOIN declared_supply_order po ON po.person_id=dec.person_id
  AND po.supplier_rut=c.company_rut
WHERE dec.source_id='1259398' AND c.company_rut='76505155';
