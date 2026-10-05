-- Independent panel-series check for Sergio Raul Vial Lopez; does not validate
-- the reported balance against a bank statement or the actual mortgage payoff.
-- Artifact cutoff: 2026-10-02T15:43:07Z. Run with ec-gold-sql.
select
    p.declaration_date,
    p.declaration_id,
    p.institution,
    p.position,
    p.liabilities_clp,
    p.assets_clp,
    p.net_worth_clp,
    p.has_outlier,
    p.confidence,
    p.n_liabilities
from panel p
join declarant d using (person_id)
where d.full_name = 'SERGIO RAUL VIAL LOPEZ'
  and p.declaration_date >= date '2023-01-01'
order by p.declaration_date;
