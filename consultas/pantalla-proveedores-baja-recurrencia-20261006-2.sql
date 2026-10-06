-- Separate low-frequency same-institution screen, to exclude mass suppliers.
-- Gold cutoff: 2026-10-02T15:43:07+00:00; run with ec-gold-sql.
SELECT d.full_name, p.institution, p.position,
       s.legal_name, s.is_controlling, s.n_orders_during,
       s.n_orders_after, s.n_same_institution, s.n_direct_award,
       s.is_widely_held, s.first_order_date, s.last_order_date,
       s.amount_clp_during
FROM declared_supply s
JOIN panel p USING (person_id)
JOIN declarant d USING (person_id)
WHERE p.is_current
  AND NOT s.is_widely_held
  AND s.n_same_institution BETWEEN 1 AND 2
  AND p.position NOT IN (
      'JUEZ', 'NOTARIO', 'FISCAL ADJUNTO', 'ABOGADO ASISTENTE DE FISCAL',
      'MINISTRO', 'CONCEJAL', 'DIPUTADO/DA'
  )
ORDER BY s.n_same_institution DESC, s.n_orders_during DESC;
