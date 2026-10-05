-- Check the declared clinic's corporate identifier/name in the procurement artifact.
-- Corporate RUT only; no personal RUT is queried or stored.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Execute with ec-gold-sql.
select order_code, url, sent_date, supplier_name, supplier_rut, buyer_name,
       amount_clp, currency, declared_amount, route, tender_code
from purchase_order
where regexp_replace(coalesce(supplier_rut, ''), '[^0-9]', '', 'g') = '767321589'
   or upper(coalesce(supplier_name, '')) like '%MISCANTI%'
   or upper(coalesce(supplier_name, '')) like '%LIONDENT%'
order by sent_date desc, order_code;

select count(*) as rows_for_clinic_name_or_company_rut,
       count(distinct order_code) as distinct_order_codes,
       count(distinct buyer_code) as distinct_buyers
from purchase_order
where regexp_replace(coalesce(supplier_rut, ''), '[^0-9]', '', 'g') = '767321589'
   or upper(coalesce(supplier_name, '')) like '%MISCANTI%'
   or upper(coalesce(supplier_name, '')) like '%LIONDENT%';
