-- Semilla: compras a la propia institución por participación declarada con nexo de interés.
-- Perfil/corte consultado: meta.build_date = 2026-10-30T15:53:06+00:00.
SELECT s.person_id, p.full_name, s.supplier_rut, s.legal_name,
       s.participation_type, s.is_controlling, s.article_4_stake,
       s.n_orders_during, s.n_orders_after, s.n_same_institution,
       s.amount_clp_during, s.amount_uf_during, s.n_buyers,
       s.name_similarity, d.declaration_date, d.institution, d.position
FROM declared_supply s
JOIN person p USING (person_id)
JOIN declaration d ON d.person_id = s.person_id AND d.is_current
WHERE s.n_same_institution > 0
  AND s.article_4_stake = TRUE
ORDER BY s.amount_clp_during DESC NULLS LAST;
