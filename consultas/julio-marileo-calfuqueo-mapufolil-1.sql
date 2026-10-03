select
  order_code,
  min(sent_date) as sent_date,
  max(buyer_name) as buyer_name,
  max(tender_code) as tender_code,
  max(status) as status,
  max(route) as route,
  max(amount_clp) as amount_clp
from declared_supply_order
where person_id = '48dbe00682ac9a37f877e764c1bbea78'
  and is_primary_for_person = true
  and timing = 'during'
group by order_code
order by sent_date;

select
  count(distinct order_code) as unique_orders,
  sum(amount_clp) as total_nominal_clp,
  min(sent_date) as first_order,
  max(sent_date) as last_order,
  count(distinct tender_code) as tenders,
  count(distinct buyer_name) as buyers
from declared_supply_order
where person_id = '48dbe00682ac9a37f877e764c1bbea78'
  and is_primary_for_person = true
  and timing = 'during';
