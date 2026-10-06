# Tres declaraciones consignan montos muy distintos para un crédito hipotecario declarado por Álvaro Jara Bucarey

## Síntesis

Las declaraciones de Álvaro Domingo Jara Bucarey de marzo de 2024, marzo de 2025 y marzo de 2026 consignan, cada una, una obligación rotulada «CRÉDITO HIPOTECARIO», con acreedor escrito «BANCO ITAHU», por CLP 13.711.534.231, CLP 133.221.540 y CLP 42.667.234.500, respectivamente.[1][2][3] El cotejo del formulario original con tres filas distintas de la tabla de pasivos del oro de EstadoClaro confirma que esos importes están publicados en CLP, en documentos sucesivos de la misma persona; la razón de comparación es el registro declarado, no un saldo bancario verificado.

La diferencia es una observación documental de interés para revisar la comparabilidad de declaraciones patrimoniales públicas. Los documentos consultados no establecen qué explica los cambios; no se afirma que las cifras sean saldos reales, que exista una deuda por esos montos, que haya falsedad o que se haya cometido una infracción.[1][2][3]

## Cronología y hechos documentados

- La declaración 1170324, actualización periódica del 26-03-2024, identifica a ÁLVARO DOMINGO JARA BUCAREY y consigna un monto global de pasivos y una obligación hipotecaria de CLP 13.711.534.231, con acreedor «BANCO ITAHU».[1]
- La declaración 1412441, actualización periódica del 31-03-2025, identifica al mismo nombre completo y consigna un monto global y una obligación hipotecaria de CLP 133.221.540, con acreedor escrito de la misma manera.[2]
- La declaración 1703401, actualización periódica del 30-03-2026, vuelve a identificar al mismo declarante y consigna un monto global y una obligación hipotecaria de CLP 42.667.234.500, con el mismo acreedor literal.[3]
- Las tres páginas declaran como cargo «Embajador Primera Categoría Exterior» en la Subsecretaría de Relaciones Exteriores; las fechas son snapshots de cada formulario, no acreditan por sí solas continuidad del cargo entre fechas.[1][2][3]

## Método y controles

Se reabrieron las tres declaraciones originales por su ID exacto y se compararon identidad completa, fecha, tipo de pasivo, acreedor literal y monto. Las tres muestran cifras en pesos y el mismo rótulo hipotecario; no se sustituyó la denominación «BANCO ITAHU» por una entidad corregida o normalizada.[1][2][3]

La consulta guardada `consultas/alvaro-jara-bucarey-pasivo-hipotecario-20261006.sql` selecciona los tres ID de fuente y devuelve una fila por documento, con tipo, acreedor, importe, moneda CLP y lectura local. Las consultas independientes `consultas/alvaro-jara-bucarey-pasivo-hipotecario-1.sql` y `-2.sql` reproducen la serie del panel y los componentes de pasivo; `-3.sql` separa activos e inmuebles para evitar multiplicación de filas. El oro registra una sola obligación hipotecaria en cada uno de los tres documentos señalados, con moneda CLP y acreedor literal «BANCO ITAHU». Corte consultado: `meta.build_date=2026-10-06T15:56:08+00:00`.

## Explicaciones posibles y límites

Los formularios por sí solos no permiten distinguir entre cambio real de una obligación, error de ingreso, corrección incompleta u otra explicación. Los bienes y pasivos son declarados por el titular; estas páginas corroboran lo publicado, no verifican saldos con el acreedor ni enlazan el pasivo a una inscripción hipotecaria específica.[1][2][3] No se consultó información privada ni se contactó a la persona, al acreedor o a organismos.

## Preguntas para una revisión documental

1. ¿Qué documento o cambio declarado explica la diferencia entre los importes de marzo de 2024, marzo de 2025 y marzo de 2026?
2. ¿Existe una rectificación o una declaración posterior que cambie alguno de esos registros?
3. ¿La denominación literal del acreedor corresponde a una errata del formulario o a la forma en que se informó en cada declaración? La redacción aquí conserva el texto de la fuente y no resuelve esa cuestión.

## Matriz de afirmaciones

- **c1 — Identidad y fechas:** las tres fuentes contienen el nombre completo y las fechas/cargos indicados.[1][2][3]
- **c2 — Comparabilidad documental:** las tres fuentes consignan un crédito hipotecario, el mismo acreedor literal y montos CLP de CLP 13.711.534.231, CLP 133.221.540 y CLP 42.667.234.500, respectivamente.[1][2][3]
- **c3 — Reproducción tabular y deduplicación:** consultas guardadas al oro con corte indicado devuelven tres documentos distintos y una obligación por documento; la consulta independiente por IDs exactos confirma moneda CLP y acreedor.[consultas/alvaro-jara-bucarey-pasivo-hipotecario-20261006.sql][consultas/alvaro-jara-bucarey-pasivo-hipotecario-1.sql][consultas/alvaro-jara-bucarey-pasivo-hipotecario-2.sql]
- **c4 — Alcance:** los documentos acreditan lo declarado, no saldos bancarios efectivos, causa, falsedad ni infracción.[1][2][3]

## Sources

[1] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1170324 — InfoProbidad, declaración 1170324 (26-03-2024)
    > "#### Monto global en pesos $ 13.711.534.231"
    > "| Tipo de obligación o deuda | CRÉDITO HIPOTECARIO |"
[2] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1412441 — InfoProbidad, declaración 1412441 (31-03-2025)
    > "#### Monto global en pesos $ 133.221.540"
    > "| Tipo de obligación o deuda | CRÉDITO HIPOTECARIO |"
[3] https://www.infoprobidad.cl/Declaracion/Declaracion?ID=1703401 — InfoProbidad, declaración 1703401 (30-03-2026)
    > "#### Monto global en pesos $ 42.667.234.500"
    > "| Tipo de obligación o deuda | CRÉDITO HIPOTECARIO |"
