-- Check whether any declared company of the 2026-06-04 declaration is linked to public-procurement records.
-- Gold cutoff: 2026-10-02T15:43:07Z.
select c.legal_name, c.company_rut, c.value_clp as declared_company_value_clp,
       cs.supplier_rut, cs.window_start, cs.window_end,
       s.n_orders, round(s.amount_clp) as all_time_amount_clp,
       s.first_order_date, s.last_order_date
from company c
left join company_supply cs
  on c.declaration_id = cs.declaration_id and c.asset_id = cs.asset_id
left join supplier s on cs.supplier_rut = s.supplier_rut
where c.declaration_id='declaracion_fa737d35c03d2b45232e8d86c679b62c'
order by s.n_orders desc nulls last, c.legal_name;