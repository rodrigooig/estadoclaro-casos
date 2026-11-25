-- Pista: gasto Servel a sociedad declarada y búsqueda de compras públicas cercanas.
SELECT p.full_name, c.election_year, cs.line_id, cs.legal_name, cs.amount_clp, cs.amount_uf,
       cs.is_rejected, cs.reimbursement_type, cs.description, cs.declaration_id
FROM campaign_self_supply cs
JOIN person p ON p.person_id=cs.person_id
JOIN campaign c ON c.campaign_id=cs.campaign_id
WHERE p.full_name ILIKE '%MARCOS%GATICA%';

SELECT dec.declaration_id, dec.declaration_date, dec.institution, dec.position,
       co.company_rut, co.legal_name, co.business_activity, co.quantity, co.is_controlling
FROM declaration dec JOIN company co USING(declaration_id)
WHERE dec.declaration_id='declaracion_2f0e50239f8b46e02d725ffc56839400';

SELECT order_code, url, sent_date, status, route, is_direct_award, supplier_rut,
       supplier_name, buyer_name, amount_clp, amount_uf
FROM purchase_order
WHERE supplier_rut='79795080' AND sent_date>='2024-07-29'
ORDER BY sent_date DESC;
