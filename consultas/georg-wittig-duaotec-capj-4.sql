-- Georg Richard Wittig Parraguez / DUAOTEC SpA: contadores sobre todas las OCs del proveedor.
-- Corte gold: 2026-10-02T15:43:07Z. Ejecutar con ec-gold-sql.
select count(*) as n_rows,
       min(sent_date) as first_sent,
       max(sent_date) as last_sent,
       sum(amount_clp) as total_clp,
       sum(case when upper(buyer_name) like '%CORPORACION ADMINISTRATIVA DEL PODER JUDICIAL%' then 1 else 0 end) as n_capj_named,
       sum(case when upper(buyer_name) like '%PODER JUDICIAL%' then 1 else 0 end) as n_pjud_named,
       sum(case when is_direct_award then 1 else 0 end) as n_direct_award,
       sum(case when is_agile then 1 else 0 end) as n_agile,
       count(distinct buyer_key) as n_buyers
from purchase_order
where supplier_rut = '76624276';