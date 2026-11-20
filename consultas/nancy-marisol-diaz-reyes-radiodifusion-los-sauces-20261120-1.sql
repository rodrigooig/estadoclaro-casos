-- Semilla de búsqueda: sociedad declarada a nombre de persona funcionaria y OCs
-- del mismo comprador durante la ventana de declaración; abrir las primarias.
SELECT p.full_name, d.institution, d.position, s.legal_name, s.supplier_rut,
       s.n_orders_during, s.n_same_institution, s.n_direct_award, s.n_agile,
       s.amount_clp_during, s.first_order_date, s.last_order_date,
       s.is_controlling, s.participation_type, s.article_4_stake,
       s.name_similarity
FROM declared_supply s
JOIN person p ON p.person_id = s.person_id
JOIN declaration d ON d.person_id = s.person_id AND d.is_current = true
WHERE s.n_same_institution > 0
  AND s.article_4_stake = true
  AND s.is_widely_held = false
  AND s.n_orders_during >= 1
ORDER BY s.amount_clp_during DESC
LIMIT 30;
