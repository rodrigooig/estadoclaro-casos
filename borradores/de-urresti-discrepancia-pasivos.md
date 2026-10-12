# Dos declaraciones oficiales de Alfonso De Urresti publicaron totales de pasivos distintos para la misma fecha

Las declaraciones oficiales atribuidas a Alfonso Arturo De Urresti Longton y fechadas el 26 de marzo de 2024 muestran una diferencia entre el total global publicado en cada documento.[1][2] La declaración presentada por su función de senador consigna CLP 229.825.327; la declaración vinculada a su función en el Partido Socialista de Chile consigna CLP 2.299.825.327.[1][2]

En ambas páginas aparecen tres líneas de crédito hipotecario con Banco BCI.[1][2] En el oro de EstadoClaro, las tres líneas de cada declaración suman CLP 229.825.327, igual al total global de la página de Senado y CLP 2.070.000.000 menos que el total global de la página del Partido Socialista.[1][2] La consulta reproduce cada declaración por separado; no suma ni trata ambos documentos como pasivos distintos.

La comparación describe una diferencia entre campos publicados, no permite determinar cuál total debía prevalecer ni su causa.[1][2] Las páginas no explican si corresponde a una rectificación, un error de registro o a otra circunstancia.[1][2] No es evidencia del saldo bancario efectivo, de falsedad o de una infracción.

## Hechos medidos y método

Las dos páginas de InfoProbidad identifican el mismo nombre completo, la misma fecha —26-03-2024— y el mismo tipo —Actualización Periódica (Marzo)—.[1][2] Una identifica como organismo al Senado y cargo Senador(A); la otra identifica al Partido Socialista de Chile y cargo Miembro Órgano Ejecutivo.[1][2]

La consulta `consultas/de-urresti-discrepancia-pasivos-20261012.sql` al oro con corte `2026-10-09T16:06:27Z` devuelve una fila por documento: ambos tienen tres líneas, todas de crédito hipotecario y acreedor Banco BCI; la suma del detalle es CLP 229.825.327 en ambos casos, mientras los totales globales son CLP 229.825.327 y CLP 2.299.825.327.[1][2] Una segunda consulta, escrita con agregación separada de detalle, reproduce las dos filas y los mismos importes, sin multiplicar líneas por un join.

## Límites y preguntas para auditoría

- Las declaraciones son publicaciones autodeclaradas.[1][2] Esta comparación no verifica deuda, pagos, contratos bancarios ni titularidad económica externa.
- Los registros muestran dos declaraciones asociadas a instituciones y funciones distintas; no se presume que una sustituya a la otra.[1][2]
- Las páginas consultadas no explican la diferencia de CLP 2.070.000.000 entre el total global de una declaración y la suma de sus tres líneas visibles de pasivos.[1][2]
- Una auditoría podría rastrear el origen del total global de la declaración 1172389, la relación administrativa entre ambos documentos y si existe una rectificación o historial oficial. Hasta obtenerlo, no se atribuye causa.

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1168779 — InfoProbidad declaración 1168779
    > "#### Monto global en pesos $ 229.825.327"
    > "Monto adeudado en pesos | $ 160.866.625"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1172389 — InfoProbidad declaración 1172389
    > "#### Monto global en pesos $ 2.299.825.327"
    > "Monto adeudado en pesos | $ 160.866.625"
