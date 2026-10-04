-- Exact legal-entity RUT lookup in the purchase-order dataset, distinct from
-- declared-supply matching. Supplier RUTs are company identifiers.
-- Artifact cutoff 2026-10-02T15:43:07Z; execute only with ec-gold-sql.
select order_code, sent_date, status, supplier_rut, supplier_name,
       buyer_name, amount_clp
from purchase_order
where supplier_rut in ('76055515', '77239086')
order by sent_date desc;
