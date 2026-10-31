-- Seed query: declared controlling article-4 interests and same-institution OCs
select distinct ds.person_id, d.full_name, ds.supplier_name, ds.supplier_rut,
       ds.n_orders_during, ds.n_same_institution, ds.amount_clp_during,
       ds.amount_uf_during, dec.declaration_id, dec.declaration_date,
       dec.institution, dec.position, dec.profession
from declared_supply ds
join declarant d using (person_id)
join declaration dec using (person_id)
where d.full_name ilike '%SANDRA%GUTIERREZ%ARDAYA%'
  and ds.article_4_stake and ds.is_controlling
order by dec.declaration_date;
