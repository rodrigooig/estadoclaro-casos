-- Orders joining this declared interest to the same institution
select distinct d.full_name, ds.supplier_name, ds.supplier_rut,
       dso.order_code, dso.sent_date, dso.status, dso.route,
       dso.amount_clp, dso.amount_uf, dso.buyer_name, dso.url
from declared_supply_order dso
join declared_supply ds
  on ds.person_id = dso.person_id and ds.supplier_rut = dso.supplier_rut
join declarant d using (person_id)
where d.full_name ilike '%SANDRA%GUTIERREZ%ARDAYA%'
  and dso.same_institution = true
order by dso.sent_date, dso.order_code;
