-- Independent supplier-dimension name check; do not infer absence of trade beyond the artifact.
-- Artifact cutoff 2026-10-02T15:43:07Z.
select supplier_rut, name, activity, n_orders, first_order_date, last_order_date,
       round(amount_clp) as amount_clp
from supplier
where lower(coalesce(name, '')) = 'centro de salud vitaser limitada';
