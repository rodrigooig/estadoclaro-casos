-- Reproduce las órdenes de trato directo enlazadas por RUT societario a la participación declarada.
-- Ejecutar con: ec-gold-sql consultas/arnaldo-recabarren-essbio-trato-directo-2026-1.sql
select distinct
  order_code, sent_date, status, route, buyer_name, amount_clp, amount_uf,
  main_rubro, timing, same_institution, supplier_rut, legal_name
from declared_supply_order
where person_id = 'b010f372d8b224cce6f2fe72ee308e35'
  and is_primary_for_person
  and exclusion_reason is null
  and is_direct_award
  and timing = 'during'
  and supplier_rut = '76833300'
order by sent_date, order_code;
