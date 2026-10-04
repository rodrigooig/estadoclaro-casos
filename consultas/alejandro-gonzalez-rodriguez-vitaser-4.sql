-- Inspect declared supplier relationships for the exact full-name identity.
-- Does not substitute entity-name similarity for exact supplier RUT.
select d.full_name, s.legal_name, s.supplier_rut, s.supplier_name,
       s.supplier_activity, s.n_orders_company, s.n_orders_during,
       round(s.amount_clp_during) as amount_clp_during,
       s.first_order_date, s.last_order_date
from panel p
join declarant d using (person_id)
join declared_supply s using (person_id)
where d.full_name = 'ALEJANDRO MATIAS GONZALEZ RODRIGUEZ'
order by s.legal_name, s.supplier_rut;
