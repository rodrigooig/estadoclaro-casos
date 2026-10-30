-- Comprobar campañas Servel enlazadas a la identidad canónica del oro.
-- Ejecutar solo con: ec-gold-sql consultas/javier-etcheberry-multicaja-fonasa-sii-2025-2.sql
SELECT
  c.campaign_id,
  c.name,
  c.election_year,
  c.office,
  c.audit_status,
  c.source_uri
FROM campaign AS c
WHERE c.person_id = (
  SELECT person_id
  FROM person
  WHERE full_name = 'JAVIER ETCHEBERRY CELHAY'
);
