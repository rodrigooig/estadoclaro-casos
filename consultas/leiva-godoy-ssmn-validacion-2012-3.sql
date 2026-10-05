-- Exact-name provider search in the procurement artifact.
-- Zero rows is limited to literal names; it does not test suppliers' companies.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute only with ec-gold-sql.
select order_code, sent_date, supplier_name, buyer_name, buyer_code, amount_clp, url
from purchase_order
where upper(supplier_name) like '%LUIS LEIVA GODOY%'
   or upper(supplier_name) like '%LEIVA GODOY LUIS%'
order by sent_date desc
limit 30;
