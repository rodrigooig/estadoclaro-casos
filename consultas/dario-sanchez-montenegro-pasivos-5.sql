-- EstadoClaro gold cutoff: 2026-09-29T15:40:44+00:00; read-only execution 2026-10-02.
-- Declared asset categories and property detail in the latest candidate declaration.
select 'real_estate' as asset_type, count(*) as rows, sum(value_clp) as nominal_clp
from real_estate
where declaration_id = 'declaracion_a84802367300a64230f82d01407fc965'
union all
select 'movable', count(*), sum(value_clp)
from movable
where declaration_id = 'declaracion_a84802367300a64230f82d01407fc965'
union all
select 'company', count(*), sum(value_clp)
from company
where declaration_id = 'declaracion_a84802367300a64230f82d01407fc965';
