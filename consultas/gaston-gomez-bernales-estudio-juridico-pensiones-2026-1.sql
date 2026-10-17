-- Reproduce las tres órdenes por trato directo a GÓMEZ & GARCÍA LIMITADA
-- y el vínculo declarado por GASTÓN ALFONSO GÓMEZ BERNALES.
-- Ejecutar con: ec-gold-sql consultas/gaston-gomez-bernales-estudio-juridico-pensiones-2026-1.sql
select
  d.full_name,
  s.person_id,
  s.supplier_rut,
  s.supplier_dv,
  s.legal_name,
  s.is_controlling,
  s.participation_type,
  s.article_4_stake,
  s.n_orders_during,
  s.amount_clp_during,
  s.amount_uf_during,
  s.first_order_date,
  s.last_order_date,
  o.order_code,
  o.sent_date,
  o.status,
  o.route,
  o.buyer_name,
  o.amount_clp,
  o.amount_uf,
  o.url
from declared_supply s
join declarant d using (person_id)
join declared_supply_order o
  on o.person_id = s.person_id and o.supplier_rut = s.supplier_rut
where s.person_id = '656ada14649b34374d0fe9d4a04ed440'
  and s.supplier_rut = '77751621'
  and o.is_primary_for_person
  and o.is_direct_award
  and o.exclusion_reason is null
order by o.sent_date, o.order_code;
