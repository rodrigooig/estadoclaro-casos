-- Find repeated asset keys within the declaration; the key is not itself proof
-- that repeated source entries are a single legal/physical asset.
-- Artifact cutoff: 2026-10-02T15:43:07Z; query run 2026-10-05.
select asset_type, match_quality, asset_key, count(*) as n_rows,
       round(sum(value_clp)) as total_value_clp,
       string_agg(cast(round(value_clp) as varchar), ', ' order by value_clp) as values_clp
from asset
where declaration_id = 'declaracion_986fa807bbe0c721702868bae6ef8a33'
group by asset_type, match_quality, asset_key
having count(*) > 1
order by n_rows desc, asset_type;
