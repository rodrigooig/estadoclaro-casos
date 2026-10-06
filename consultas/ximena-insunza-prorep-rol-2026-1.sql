-- EstadoClaro gold cutoff: 2026-10-02T15:43:07+00:00
-- Reproduce the declarant's panel snapshots and declared-supply cross-check.
SELECT
    p.declaration_id,
    p.n_declaration,
    p.declaration_date,
    p.declaration_type,
    p.institution,
    p.position,
    p.tenure_status,
    p.assets_uf,
    p.liabilities_uf,
    p.net_worth_uf,
    p.delta_adjusted_uf,
    p.delta_acquisition_uf,
    p.delta_disposal_uf,
    p.delta_revaluation_uf,
    p.attribute_match_share,
    p.series_has_gaps,
    p.source_uri
FROM panel AS p
JOIN declarant AS d USING (person_id)
WHERE d.full_name = 'XIMENA INSUNZA CORVALÁN'
ORDER BY p.declaration_date;

SELECT
    ds.legal_name,
    ds.is_controlling,
    ds.n_orders_during,
    ds.n_orders_after,
    ds.n_buyers,
    ds.n_same_institution,
    ds.amount_clp_during,
    ds.first_order_date,
    ds.last_order_date
FROM declared_supply AS ds
JOIN declarant AS d USING (person_id)
WHERE d.full_name = 'XIMENA INSUNZA CORVALÁN'
ORDER BY ds.n_orders_during DESC, ds.legal_name;
