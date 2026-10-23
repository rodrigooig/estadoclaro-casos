-- Señal resumida por RUT societario declarado; salida verificada contra el gold.
SELECT p.full_name, d.institution, d.position, d.declaration_date,
       ds.supplier_rut, ds.legal_name, ds.participation_type,
       ds.n_orders_during, ds.n_buyers, ds.n_same_institution,
       ds.n_direct_award, ds.amount_clp_during, ds.amount_uf_during,
       ds.first_order_date, ds.last_order_date, ds.name_similarity,
       ds.is_controlling, ds.article_4_stake
FROM declared_supply ds
JOIN person p ON p.person_id = ds.person_id
JOIN declaration d ON d.person_id = p.person_id AND d.is_current
WHERE upper(p.full_name) = 'RICARDO MAURICIO SALGADO SEPULVEDA'
  AND ds.supplier_rut = '77454208';
