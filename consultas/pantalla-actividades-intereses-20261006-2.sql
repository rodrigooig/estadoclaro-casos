-- Exploratory screen: current declared activity linked to state suppliers.
-- Gold cutoff: 2026-10-02T15:43:07+00:00; run with ec-gold-sql.
SELECT
    d.full_name,
    p.institution,
    p.position,
    p.declaration_date,
    a.type,
    a.industry,
    a.entity,
    a.relationship,
    a.purpose,
    s.legal_name,
    s.is_controlling,
    s.n_orders_during,
    s.n_orders_after,
    s.n_buyers,
    s.n_same_institution,
    s.n_direct_award,
    s.is_widely_held,
    s.first_order_date,
    s.last_order_date,
    s.amount_clp_during
FROM panel p
JOIN declarant d USING (person_id)
JOIN activity a USING (declaration_id)
LEFT JOIN declared_supply s USING (person_id)
WHERE p.is_current
  AND a.type IN (
      'ECONOMICA', 'GREMIAL', 'ORGANIZACIÓN SIN FINÉS DE LUCRO', 'BENEFICENCIA'
  )
ORDER BY a.last_twelve_months DESC,
         s.n_same_institution DESC NULLS LAST,
         s.n_orders_during DESC NULLS LAST;
