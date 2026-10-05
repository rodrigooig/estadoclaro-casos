-- Person/declaration link from the supplier relation; company RUT is a legal-entity identifier.
-- Gold cutoff 2026-10-02T15:43:07Z. Does not expose a personal RUT.
SELECT d.full_name, p.institution, p.position, p.declaration_date, p.source_uri,
       s.supplier_rut, s.legal_name, s.n_declarants, s.is_controlling,
       s.participation_type, s.article_4_stake, s.name_similarity,
       s.n_orders_during, s.n_orders_after, s.n_orders_excluded,
       s.n_buyers, s.n_same_institution, s.n_direct_award, s.n_agile,
       s.first_order_date, s.last_order_date,
       ROUND(s.amount_clp_during) AS amount_clp_during,
       ROUND(s.amount_uf_during, 2) AS amount_uf_during,
       s.supplier_name, s.supplier_activity, s.company_first_order,
       s.company_last_order, s.company_rank, s.n_suppliers
FROM declared_supply s
JOIN panel p USING (person_id)
JOIN declarant d USING (person_id)
WHERE d.full_name = 'ANDREA VALERIA RODRIGUEZ FERRADA'
  AND p.declaration_date = DATE '2026-03-26'
  AND s.supplier_rut = '76226856';
