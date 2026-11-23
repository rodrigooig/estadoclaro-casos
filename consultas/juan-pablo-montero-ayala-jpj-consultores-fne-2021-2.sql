-- Orden específica y demás órdenes del mismo RUT para no tratarla como todo el historial.
SELECT order_code, sent_date, status, route, is_direct_award, tender_code,
       supplier_rut, supplier_dv, supplier_name, buyer_name,
       amount_clp, amount_uf, main_rubro, exclusion_reason
FROM purchase_order
WHERE supplier_rut = '77375290'
ORDER BY sent_date, order_code;

-- Resumen del cruce para el declarante y el proveedor.
SELECT person_id, supplier_rut, legal_name, n_declarants, is_controlling,
       participation_type, article_4_stake, name_similarity,
       n_orders_during, n_orders_after, n_buyers, n_same_institution,
       n_direct_award, first_order_date, last_order_date,
       amount_clp_during, amount_uf_during,
       supplier_name, supplier_activity,
       n_orders_company, amount_clp_company,
       company_first_order, company_last_order
FROM declared_supply
WHERE person_id = '8cb80385281aad45b12f53d3a3991660'
  AND supplier_rut = '77375290';
