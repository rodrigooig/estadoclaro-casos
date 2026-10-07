-- Independently compare full liability detail with panel/global amount and source text normalization.
-- Artifact cutoff: 2026-10-06T15:56:08Z. Execute with ec-gold-sql.
select person.full_name, declaration.declaration_date, panel.source_uri,
       panel.n_liabilities,
       round(panel.liabilities_clp) as panel_liabilities_clp,
       round(declaration.global_liability_amount_clp) as global_liability_clp,
       count(liability.declaration_id) as detail_rows,
       round(sum(liability.value_clp)) as detail_sum_clp,
       string_agg(distinct liability.creditor, ', ') as source_creditor,
       string_agg(distinct liability.normalized_creditor, ', ') as normalized_creditor,
       string_agg(distinct liability.currency, ', ') as currencies
from declaration
join person using (person_id)
join panel using (declaration_id)
left join liability using (declaration_id)
where person.full_name = 'RICARDO IGOR RIVANO ARAVENA'
  and panel.source_uri in (
      'https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1651879',
      'https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1458933',
      'https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1358306',
      'https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1358323'
  )
group by person.full_name, declaration.declaration_date, panel.source_uri,
         panel.n_liabilities, panel.liabilities_clp, declaration.global_liability_amount_clp
order by declaration.declaration_date desc, panel.source_uri;