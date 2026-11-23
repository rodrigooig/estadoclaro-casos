-- Cutoff gold.meta.build_date = 2026-11-22T04:10:18+00:00; solo ec-gold-sql.
-- Conteo de OCs únicas de trato directo en el intervalo que la declaración acredita.
select order_code, min(sent_date) as sent_date,
       any_value(amount_clp) as amount_clp, any_value(amount_uf) as amount_uf,
       any_value(route) as causal, any_value(buyer_name) as buyer_name,
       any_value(url) as url
from declared_supply_order
where person_id = 'ed5091bbfa95377b6b00ea1884af4ae2'
  and is_primary_for_person
  and timing = 'during'
  and exclusion_reason is null
  and is_direct_award
  and article_4_stake
  and coalesce(same_institution, false) = false
group by order_code
order by sent_date;
