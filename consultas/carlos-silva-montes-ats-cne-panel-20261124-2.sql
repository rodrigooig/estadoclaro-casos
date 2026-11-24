-- Comprobar cobertura de campaña Servel para el identificador de persona, sin unir por homonimia.
SELECT campaign_id, election_key, election_year, name, office, source_uri
FROM campaign
WHERE person_id = '256c05fa5db17d4e26e2d9eba1ff6163';
