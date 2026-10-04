-- Exact-name supplier-link check; empty result means no declared-supply row in
-- this artifact for the matched person, not absence of all public work.
-- Artifact cutoff 2026-10-02T15:43:07Z; execute only with ec-gold-sql.
select s.*, d.full_name
from declared_supply s
join declarant d using (person_id)
where d.full_name = 'JOSÉ MANUEL TELLO FLORES';
