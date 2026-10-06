-- Supplier linkage by declared supplier RUT; narrow negative check, exact person.
select count(*) as joined_rows,
       count(distinct po.order_code) as distinct_orders,
       count(distinct po.buyer_code) as distinct_buyers
from panel p
join declarant d using (person_id)
join declared_supply s using (person_id)
join purchase_order po
  on regexp_replace(coalesce(po.supplier_rut, ''), '[^0-9]', '', 'g')
   = regexp_replace(coalesce(s.supplier_rut, ''), '[^0-9]', '', 'g')
where d.full_name = 'EDMUNDO GASTON MOLLER BIANCHI';
